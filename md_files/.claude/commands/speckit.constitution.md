You are reviewing the project constitution - the foundational principles and standards for development.

## Your Task

Review and internalize the project constitution from `.specify/memory/constitution.md`.

If the constitution file doesn't exist, create it with sensible defaults based on the project's CLAUDE.md.

## Constitution Sections

The constitution should define:

### Core Principles
- TDD (Test-Driven Development) is mandatory
- Accessibility (WCAG 2.1 Level AA)
- Internationalization for all user-facing strings
- Performance targets (Lighthouse scores)

### Quality Gates
- Minimum 80% test coverage
- TypeScript strict mode
- Lint and format checks pass
- Build succeeds without errors

### Anti-Patterns to Avoid
- Hardcoded strings (use i18n keys)
- Skipping tests
- Ignoring accessibility
- Direct DOM manipulation in frameworks
- Implicit any types

### Development Standards
- Conventional commits
- Feature branches
- PR-based workflow
- Code review required

## Output Format

Display the constitution contents with:
1. Summary of key principles
2. Quality gate checklist
3. Anti-patterns list
4. Next steps recommendation

If constitution doesn't exist, create `.specify/memory/constitution.md` with appropriate content.

## Follow-up

After reviewing constitution, suggest:
- `/speckit.specify` to create a feature specification
- Direct implementation for trivial changes
