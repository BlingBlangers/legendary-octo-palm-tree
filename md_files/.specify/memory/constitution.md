# Project Constitution

This document defines the foundational principles and standards for development in this project.

## Core Principles

### 1. Test-Driven Development (TDD)

**TDD is mandatory for all feature development.**

Workflow:
1. **RED**: Write failing tests first
2. **GREEN**: Write minimum code to pass
3. **REFACTOR**: Improve while keeping tests green

Never write implementation code before tests exist.

### 2. Accessibility First

**WCAG 2.1 Level AA compliance is required.**

Requirements:
- All interactive elements are keyboard accessible
- Color contrast meets 4.5:1 minimum ratio
- All images have meaningful alt text
- Form inputs have associated labels
- Focus indicators are visible
- Heading hierarchy is logical

### 3. Internationalization (i18n)

**All user-facing strings use i18n keys.**

Never hardcode text that users will see. Use translation keys for:
- UI labels and buttons
- Error messages
- Validation messages
- Placeholder text
- Alt text

### 4. Performance

**Performance targets must be met.**

Lighthouse Targets:
- Performance: >90
- Accessibility: 100
- Best Practices: >90
- SEO: >90

Response Times:
- Page load: <3 seconds
- API response: <500ms
- Interactive: <100ms

## Quality Gates

All code must pass these gates before merge:

### Automated Checks
- [ ] TypeScript strict mode passes (`npm run typecheck`)
- [ ] All tests pass (`npm test`)
- [ ] Coverage ≥80% (`npm run test:coverage`)
- [ ] Lint passes (`npm run lint`)
- [ ] Build succeeds (`npm run build`)
- [ ] Accessibility passes (`npm run test:a11y`)

### Manual Verification
- [ ] Code review approved
- [ ] Acceptance criteria verified
- [ ] Cross-browser testing (if UI)
- [ ] Keyboard navigation tested (if UI)

## Anti-Patterns to Avoid

### Code Quality
- **No implicit `any`**: Always define types
- **No `console.log`**: Use proper logging
- **No TODO comments**: Create issues instead
- **No magic numbers**: Use named constants
- **No deeply nested code**: Extract functions

### Testing
- **No skipping tests**: Fix or remove them
- **No testing implementation details**: Test behavior
- **No flaky tests**: Make them deterministic
- **No low coverage**: Maintain ≥80%

### Accessibility
- **No div buttons**: Use semantic elements
- **No color-only indicators**: Add text/icons
- **No auto-playing media**: Require user action
- **No keyboard traps**: Ensure escape routes

### i18n
- **No hardcoded strings**: Use i18n keys
- **No string concatenation**: Use interpolation
- **No date formatting without locale**: Use i18n dates

### Performance
- **No blocking renders**: Use async loading
- **No unoptimized images**: Compress and resize
- **No unnecessary re-renders**: Memoize appropriately
- **No memory leaks**: Clean up subscriptions

## Development Standards

### Git Workflow
- Feature branches from main
- Conventional commit messages
- Squash merge PRs
- Delete branches after merge

### Commit Message Format
```
type(scope): subject

body

footer
```

Types: `feat`, `fix`, `docs`, `refactor`, `test`, `chore`

### PR Requirements
- Clear description
- Linked issue
- Tests included
- Documentation updated
- Screenshots (if UI)

## Code Style

### TypeScript
- Strict mode enabled
- Explicit return types on functions
- Interface over type for objects
- Const over let where possible

### Components
- Single responsibility
- Props interface defined
- Accessible by default
- i18n-ready

### Tests
- Arrange-Act-Assert pattern
- Descriptive test names
- One assertion concept per test
- Mock external dependencies

## Resources

- **Spec Kit**: `/speckit.*` commands for structured development
- **PRP**: `/prp.*` commands for product requirements
- **ClaudeFlow**: `/swarm/*` and `/hive-mind/*` for parallel work
- **Tool Docs**: `~/.claude/tools/` for tool references

---

**Last Updated**: 2025-11-26
**Version**: 1.0.0
