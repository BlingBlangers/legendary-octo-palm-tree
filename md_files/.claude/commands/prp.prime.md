You are loading project knowledge to prepare for PRP-based development.

## Your Task

Load and internalize the project's core knowledge from `.specify/prime-core.md` and project CLAUDE.md files.

### Knowledge Sources

1. **Project Constitution**: `.specify/memory/constitution.md`
2. **Prime Core**: `.specify/prime-core.md`
3. **CLAUDE.md**: Project guidelines

### Information to Extract

#### Tech Stack
- Framework and version
- Testing frameworks
- Build tools
- Styling approach

#### Development Standards
- TDD requirements
- Coverage thresholds
- Accessibility standards
- i18n requirements

#### Key Constraints
- What to always do
- What to never do
- Quality gates

#### Anti-Patterns
- Common mistakes to avoid
- Project-specific pitfalls

### Output Format

After loading knowledge, confirm:

```markdown
### Knowledge Loaded

**Tech Stack**: [Framework] + [Styling] + [Testing]
**Standards**: TDD, ≥80% coverage, WCAG 2.1 AA, [languages]
**Workflow**: Spec Kit (primary) or PRP (optional)

**Key Constraints**:
- [Constraint 1]
- [Constraint 2]
- [Constraint 3]

**Anti-Patterns to Avoid**:
- [Anti-pattern 1]
- [Anti-pattern 2]
- [Anti-pattern 3]

**Ready to proceed with**: /prp.prd
```

### If Prime Core Doesn't Exist

Create `.specify/prime-core.md` with project-appropriate defaults:

```markdown
# Prime Core - Project Knowledge

## Tech Stack
[Extract from CLAUDE.md and package.json]

## Development Standards
[Extract from CLAUDE.md]

## Quality Gates
[Define based on project requirements]

## Anti-Patterns
[List common mistakes to avoid]

## Patterns to Follow
[Reference existing code patterns]
```

## Follow-up

After priming, proceed with:
- `/prp.prd` to create Product Requirements Document
