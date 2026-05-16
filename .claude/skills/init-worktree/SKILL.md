---
name: init-worktree
description: Initialize a new git worktree under .claude/worktrees/ and open it in a new VS Code window
disable-model-invocation: true
argument-hint: [base-branch] [description of what to do]
---

Create and initialize a Flutter worktree:

1. Generate a short kebab-case branch name from the user's description (`$ARGUMENTS[1]`). The name should be concise and descriptive (e.g., "implement nested button" -> `nested-button`).
2. Create a new worktree based on `$ARGUMENTS[0]` using the generated name. The worktree path must be absolute under `/Users/masahikokobayashi/flutter_lab/.claude/worktrees/`, and the branch follows the `worktree-<name>` convention:
   ```bash
   git worktree add -b worktree-<generated-name> /Users/masahikokobayashi/flutter_lab/.claude/worktrees/<generated-name> $ARGUMENTS[0]
   ```
3. Run `fvm flutter pub get` in the new worktree (`/Users/masahikokobayashi/flutter_lab/.claude/worktrees/<generated-name>`).
4. Open the new worktree in a new VS Code window:
   ```bash
   code /Users/masahikokobayashi/flutter_lab/.claude/worktrees/<generated-name>
   ```

## Notes

- If `$ARGUMENTS[0]` (base branch) is omitted, use `HEAD`.
- `.claude/worktrees/` is gitignored, so worktree contents do not appear as untracked files in the main checkout.
- Remove a finished worktree with `git worktree remove .claude/worktrees/<generated-name>`.
