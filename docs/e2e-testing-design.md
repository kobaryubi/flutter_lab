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
└── e2e/
    └── <feature>/
        └── <journey_name>_test.dart   # One user journey per file
```

- One file = one user journey (not one screen). Name files after the
  journey: `login_and_view_pet_list_test.dart`.
- Support directories (robots, fakes, shared helpers) are added and
  designed when the first file that needs them is placed.

## 3. Journey Selection

Select journeys by risk × frequency, not by screen coverage:

1. **Critical path** — the flow that defines the app; breakage is a blocker.
2. **Irreversible actions** — submissions, deletions, purchases.
3. **Cross-cutting wiring** — app startup, deep links, session restore.
4. **One representative error journey** — e.g. network failure shows retry UI.

Anything catchable by a unit or widget test (validation details, edge-case
branching, styling) stays out of E2E.
