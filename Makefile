.PHONY: resolve-local-host
resolve-local-host:
	./scripts/resolve_local_host.sh

.PHONY: run-local
run-local: resolve-local-host
	fvm flutter run --flavor local --dart-define-from-file=.dart_define/local.env --verbose lib/main.dart
