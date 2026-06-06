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

# Analyze the edited file only. On any issue, dart analyze exits non-zero.
# To keep token cost low we don't forward the full report: we show the issue
# count plus only the first 3 issues. Claude can re-run `fvm dart analyze` for
# the rest if needed.
if ! output=$(fvm dart analyze "$file_path" 2>&1); then
  # Issue lines look like "  error - file:line:col - message - code".
  issues=$(printf '%s\n' "$output" | grep -E '^[[:space:]]*(error|warning|info)' || true)

  # Unexpected failure (not a normal issue list) — surface the raw output.
  if [ -z "$issues" ]; then
    printf '%s\n' "$output" >&2
    exit 2
  fi

  count=$(printf '%s\n' "$issues" | grep -c . || true)
  {
    echo "dart analyze: $count issue(s) in $file_path (showing first 3):"
    printf '%s\n' "$issues" | head -3
    [ "$count" -gt 3 ] && echo "… +$((count - 3)) more — run: fvm dart analyze \"$file_path\"" || true
  } >&2
  exit 2
fi

exit 0
