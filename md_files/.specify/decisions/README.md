# Architecture Decision Records (ADRs)

This directory contains architecture decision records for significant technical decisions.

## What is an ADR?

An ADR documents an architectural decision along with its context and consequences. ADRs help teams:
- Understand why decisions were made
- Onboard new team members
- Review past decisions when context changes
- Avoid re-debating settled decisions

## When to Create an ADR

Create an ADR when:
- Introducing new frameworks or libraries
- Making significant architectural changes
- Choosing between multiple valid approaches
- Decisions affect multiple components
- Future developers might question the choice

## ADR Format

```markdown
# ADR-XXX: [Title]

**Date**: YYYY-MM-DD
**Status**: Proposed | Accepted | Deprecated | Superseded
**Deciders**: [List of people involved]

## Context

[What is the issue or problem that motivated this decision?]

## Decision

[What is the change being proposed or made?]

## Consequences

### Positive
- [Benefit 1]
- [Benefit 2]

### Negative
- [Drawback 1]
- [Drawback 2]

### Neutral
- [Observation 1]

## Alternatives Considered

### Alternative 1: [Name]
[Description and why it wasn't chosen]

### Alternative 2: [Name]
[Description and why it wasn't chosen]

## References

- [Link to relevant documentation]
- [Link to related ADR]
```

## Naming Convention

Files follow this pattern:
```
YYYY-MM-DD-[slug].md
```

Examples:
- `2025-11-26-spec-kit-slash-commands.md`
- `2025-11-26-prp-workflow-adoption.md`
- `2025-11-26-claudeflow-integration.md`

## ADR Statuses

| Status | Meaning |
|--------|---------|
| **Proposed** | Under discussion, not yet accepted |
| **Accepted** | Decision has been agreed upon |
| **Deprecated** | No longer relevant but kept for history |
| **Superseded** | Replaced by another ADR (link to new one) |

## Index

| ADR | Title | Status | Date |
|-----|-------|--------|------|
| - | - | - | - |

*No ADRs created yet. Add entries as decisions are documented.*
