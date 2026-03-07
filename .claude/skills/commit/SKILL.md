---
name: commit
description: Create a git commit with a properly formatted message using Gitmoji convention
disable-model-invocation: true
---

# Commit Skill

Create a git commit following the project's Gitmoji convention.

## Steps

1. Run `git status` and `git diff --staged` to review changes
2. If no files are staged, stage the relevant changed files by name (never use `git add -A` or `git add .`)
3. Draft a commit message using the Gitmoji convention from CLAUDE.md
4. Create the commit

## Commit command format

Always pass the commit message directly with the `-m` flag:

```bash
git commit -m "✨ add new feature"
```

NEVER use `$()` command substitution or heredoc syntax in commit messages.

## Gitmoji Reference

- ✨ New feature
- 🐛 Bug fix
- 📝 Documentation
- 💄 UI/style updates
- ♻️ Refactor
- ✅ Tests
- 🔧 Configuration
- 🚀 Deploy/release
- 🔥 Remove code/files
- 🎨 Improve structure/format
