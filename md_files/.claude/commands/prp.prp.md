You are generating a comprehensive Product Requirements Prompt (PRP) from an approved PRD.

## Reference

$ARGUMENTS

## Prerequisites

- Approved PRD exists
- `/prp.prime` has been run

## Your Task

Transform the PRD into an executable prompt with complete implementation context for one-pass development success.

### Philosophy

> "The AI agent only gets the context you provide + its training data. More context = Higher success probability."

### Step 1: Deep Research

Before generating the PRP, conduct thorough research:

#### Codebase Analysis
- Search for similar features/patterns
- Identify files to reference
- Note existing conventions
- Check test patterns

#### External Research
- Library documentation (include URLs)
- Implementation examples
- Best practices and pitfalls
- Store critical docs in `.prp/prps/ai_docs/`

### Step 2: Generate PRP

Create the PRP in `.specify/specs/{{id}}-{{name}}/prp.md`:

```markdown
# {{Feature Name}} - Product Requirements Prompt (PRP)

## Context & Knowledge Base

### Project Information
- **Project**: [Name and description]
- **Tech Stack**: [Framework, testing, styling]
- **Testing**: [Test frameworks]
- **Standards**: [Quality standards]

### Feature Overview
[Brief description from PRD]

### Research Findings
- **Library Docs**: [URLs with specific sections]
- **Code Examples**: [Reference snippets]
- **Gotchas**: [Known issues/quirks]
- **Stored Docs**: [Files in ai_docs/]

## Implementation Requirements

### Must-Have Features (P0)
1. [Feature with acceptance criteria]
2. [Feature with acceptance criteria]

### Should-Have Features (P1)
1. [Feature with acceptance criteria]

### Could-Have Features (P2)
1. [Feature with acceptance criteria]

## Technical Specifications

### Architecture
```
[Component diagram or structure]
```

### New Files to Create
- `src/components/{{Feature}}.astro` - Main component
- `src/services/{{feature}}.ts` - Business logic
- `src/types/{{feature}}.ts` - TypeScript interfaces
- `src/i18n/en/{{feature}}.json` - Translations

### Files to Modify
- `src/components/index.ts` - Export new component
- `src/types/index.ts` - Export new types

### Code Patterns to Follow

```typescript
// Reference existing patterns
// Example from: src/components/ExistingComponent.astro
---
interface Props {
  // Define props
}
const { prop } = Astro.props;
---
<div class="[tailwind classes]">
  <!-- Component content -->
</div>
```

### Test Requirements

#### Unit Tests (Vitest)
```typescript
// src/services/{{feature}}.test.ts
describe('{{Feature}}', () => {
  it('should [expected behavior]', () => {
    // Test implementation
  });
});
```

#### E2E Tests (Playwright)
```typescript
// tests/e2e/{{feature}}.spec.ts
test('{{feature}} flow', async ({ page }) => {
  // E2E test
});
```

#### Accessibility Tests
```typescript
// Include axe-core checks
test('accessibility', async ({ page }) => {
  const results = await new AxeBuilder({ page }).analyze();
  expect(results.violations).toEqual([]);
});
```

### i18n Requirements

```json
// src/i18n/en/{{feature}}.json
{
  "{{feature}}.title": "Title",
  "{{feature}}.description": "Description",
  "{{feature}}.button": "Action"
}
```

All 7 languages:
- [ ] English (en)
- [ ] French (fr)
- [ ] German (de)
- [ ] Spanish (es)
- [ ] Italian (it)
- [ ] Dutch (nl)
- [ ] Portuguese (pt)

## Implementation Plan

### Phase 1: Tests First (TDD Red)
1. Create test files
2. Write tests for all acceptance criteria
3. Verify tests fail

```bash
npm test -- --watch
# All tests should FAIL
```

### Phase 2: Implementation (TDD Green)
1. Create TypeScript interfaces
2. Implement service layer
3. Build component
4. Add i18n translations

```bash
npm test
# All tests should PASS
```

### Phase 3: Refactor
1. Extract reusable code
2. Optimize performance
3. Improve naming
4. Add JSDoc comments

### Phase 4: Quality Gates

```bash
# All must pass
npm run typecheck
npm test
npm run test:coverage  # ≥80%
npm run lint
npm run build
npm run test:a11y
```

## Anti-Patterns to Avoid

From project constitution:
- [ ] No hardcoded strings (use i18n)
- [ ] No skipping tests
- [ ] No ignoring accessibility
- [ ] No implicit any types
- [ ] No console.log in production code

## Success Criteria

### Acceptance Criteria
- [ ] All must-have features implemented
- [ ] Test coverage ≥80%
- [ ] All quality gates pass
- [ ] i18n complete for all languages
- [ ] Accessibility compliant

### Validation Commands

```bash
# Run all validations
npm run typecheck && \
npm test && \
npm run test:coverage && \
npm run lint && \
npm run build && \
npm run test:a11y
```

## Files Summary

### Create
| File | Purpose |
|------|---------|
| `src/types/{{feature}}.ts` | Type definitions |
| `src/services/{{feature}}.ts` | Business logic |
| `src/components/{{Feature}}.astro` | UI component |
| `src/i18n/*/{{feature}}.json` | Translations (7 files) |
| `src/services/{{feature}}.test.ts` | Unit tests |
| `tests/e2e/{{feature}}.spec.ts` | E2E tests |

### Modify
| File | Change |
|------|--------|
| `src/types/index.ts` | Export new types |
| `src/components/index.ts` | Export new component |

## Implementation Checklist

- [ ] Tests written first (TDD Red)
- [ ] Implementation passes tests (TDD Green)
- [ ] Code refactored (TDD Refactor)
- [ ] TypeScript passes
- [ ] Coverage ≥80%
- [ ] Lint passes
- [ ] Build succeeds
- [ ] Accessibility verified
- [ ] i18n complete
- [ ] PR ready
```

### Step 3: Confidence Score

Rate the PRP (1-10) for one-pass success:
- **9-10**: Comprehensive, clear path, all gates defined
- **7-8**: Good context, minor gaps
- **5-6**: Adequate, needs refinement
- **1-4**: Insufficient, needs more research

## Output Location

Save PRP to: `.specify/specs/{{id}}-{{feature-name}}/prp.md`

## Follow-up

After PRP is complete:
- `/prp.execute` to implement with TDD
