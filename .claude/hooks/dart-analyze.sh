#!/usr/bin/env bash
#
# PostToolUse hook: analyze a single edited Dart file to surface analyzer
# issues back to Claude with minimal token cost.
#
# - Runs `fvm dart analyze <file>` on the edited file only (fast, scoped output)
#   instead of a whole-project `flutter analyze` (slow, large output).
# - exit 0 (silent) when there are no issues: zero tokens injected.
# - exit 2 with stderr when issues exist: Claude receives the output and fixes them.
#
# Formatting and auto-fixes are intentionally left to lefthook (at commit time),
# not this hook, so the file on disk never changes right after Claude writes it.
set -euo pipefail

# Read the edited file path from the PostToolUse JSON delivered on stdin.
file_path=$(jq -r '.tool_input.file_path // empty')

# Only Dart files are relevant.
case "$file_path" in
  *.dart) ;;
  *) exit 0 ;;
esac

# Skip generated / vendored API-client packages we do not hand-edit.
case "$file_path" in
  */package/etag_cache/*|*/package/petstore/*|*/package/test_fixture/*) exit 0 ;;
esac

cd "$CLAUDE_PROJECT_DIR"

# Analyze the edited file only. On any issue, dart analyze exits non-zero;
# forward its output via stderr and exit 2 so Claude is prompted to fix it.
if ! output=$(fvm dart analyze "$file_path" 2>&1); then
  echo "$output" >&2
  exit 2
fi

exit 0
