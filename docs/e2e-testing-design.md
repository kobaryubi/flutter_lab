# E2E Testing Design for Flutter

This document describes the E2E (end-to-end) testing strategy for Flutter apps,
tailored to this repository's stack (Riverpod, go_router, flavors, fvm).

## 1. Tooling

Use the official `integration_test` package: it runs on real devices with the
same finder/tester API as widget tests and needs no extra infrastructure.

Adopt Patrol only when a journey requires native UI that `integration_test`
cannot touch (permission dialogs, notifications) — likely once camera/OCR
journeys become test targets.

## 2. Directory Structure

```
integration_test/
├── e2e/
│   └── <feature>/
│       └── <journey_name>_test.dart   # One user journey per file
├── fakes/
│   └── fake_<dependency>.dart         # One fake per replaced dependency
└── page_objects/
    └── <feature>_page_object.dart     # One page object per screen (§5)
```

- One file = one user journey (not one screen). Name files after the
  journey: `login_and_view_pet_list_test.dart`.
- `fakes/` holds no-op or in-memory implementations of domain interfaces,
  injected via Riverpod provider `overrides` in the test's `ProviderScope`
  so the app boots without real backends (e.g. `FakeAnalyticsGateway`
  replaces the Firebase-backed gateway, avoiding `Firebase.initializeApp()`).
- Support directories (robots, shared helpers) are added and designed
  when the first file that needs them is placed.

## 3. Journey Selection

Select journeys by risk × frequency, not by screen coverage:

1. **Critical path** — the flow that defines the app; breakage is a blocker.
2. **Irreversible actions** — submissions, deletions, purchases.
3. **Cross-cutting wiring** — app startup, deep links, session restore.
4. **One representative error journey** — e.g. network failure shows retry UI.

Anything catchable by a unit or widget test (validation details, edge-case
branching, styling) stays out of E2E.

## 4. Running Tests

```bash
fvm flutter test integration_test --flavor local -d <device_id>
```

- Always run against the `local` flavor; never point E2E at `production`.
- Requires a running emulator/simulator or a connected device
  (list with `fvm flutter devices`).

## 5. Page Object Model

Each screen a journey touches gets one page object in
`integration_test/page_objects/<feature>_page_object.dart`:

- Class name: `<Screen name>PageObject`, extending a shared `PageObject`
  base class that holds the `WidgetTester`.
- Following [Playwright's POM guidance](https://playwright.dev/docs/pom),
  finders are fields on the page object — every selector is captured in
  exactly one place.
- Action methods are named after user intent (`openE2eCounter`,
  `increment`), not widget mechanics (`tapLink`, `pressButton`) — tests
  read as journeys, and renaming a widget never renames the action.
- Page objects expose actions only; assertions stay in the test body
  (`expect` against a finder field, e.g.
  `expect(counterPageObject.countText, findsOne)`).
- Action methods pump until the UI settles (`tap` + `pumpAndSettle`
  as one unit) — unlike Playwright's auto-waiting `click`, a bare
  `tester.tap` never repaints, so pairing them here prevents the
  classic forgotten-await flake.
- Finder fields locate widgets by `Key`, named
  `<feature>_<widget>_<role>` (e.g. `e2e_counter_increment_button`) —
  refactor-safe and independent of user-visible text.
