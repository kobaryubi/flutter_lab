# E2E Testing Design for Flutter

This document describes the E2E (end-to-end) testing strategy for Flutter apps,
tailored to this repository's stack (Riverpod, go_router, flavors, fvm).

## 1. Tooling

Use the official `integration_test` package: it runs on real devices with the
same finder/tester API as widget tests and needs no extra infrastructure.

Adopt Patrol only when a journey requires native UI that `integration_test`
cannot touch (permission dialogs, notifications) — likely once camera/OCR
journeys become test targets.
