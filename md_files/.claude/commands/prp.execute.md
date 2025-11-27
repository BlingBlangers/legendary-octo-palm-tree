You are executing implementation following the PRP using strict TDD methodology.

## Reference

$ARGUMENTS

## Prerequisites

- Approved PRP exists
- Project knowledge loaded via `/prp.prime`

## Your Task

Implement the feature following the PRP with TDD (RED-GREEN-REFACTOR).

### Execution Philosophy

> "Optimize for one-pass success. Follow the PRP exactly."

### Phase 1: RED - Write Failing Tests First

**Goal**: Create all tests BEFORE any implementation code.

```bash
# Start test watcher
npm test -- --watch
```

#### Unit Tests

Create test files as specified in PRP:

```typescript
// src/services/{{feature}}.test.ts
import { describe, it, expect } from 'vitest';
import { featureFunction } from './{{feature}}';

describe('{{Feature}}', () => {
  describe('acceptance criteria 1', () => {
    it('should [expected behavior from PRP]', () => {
      // Arrange
      const input = /* test data */;

      // Act
      const result = featureFunction(input);

      // Assert
      expect(result).toBe(expected);
    });
  });

  describe('edge cases', () => {
    it('should handle empty input', () => {});
    it('should handle invalid input', () => {});
  });
});
```

#### E2E Tests

```typescript
// tests/e2e/{{feature}}.spec.ts
import { test, expect } from '@playwright/test';

test.describe('{{Feature}}', () => {
  test('primary user flow', async ({ page }) => {
    await page.goto('/feature-page');
    // Test steps from PRP
  });
});
```

#### Accessibility Tests

```typescript
// Include in E2E or separate file
import AxeBuilder from '@axe-core/playwright';

test('accessibility compliance', async ({ page }) => {
  await page.goto('/feature-page');
  const results = await new AxeBuilder({ page }).analyze();
  expect(results.violations).toEqual([]);
});
```

**Verify**: All tests MUST FAIL at this point.

```bash
npm test
# Expected: X failing tests
```

### Phase 2: GREEN - Minimal Implementation

**Goal**: Write minimum code to make ALL tests pass.

#### Step 1: Types First

```typescript
// src/types/{{feature}}.ts
export interface FeatureType {
  // Properties from PRP
}
```

#### Step 2: Service Layer

```typescript
// src/services/{{feature}}.ts
import type { FeatureType } from '../types/{{feature}}';

export function featureFunction(input: FeatureType): Result {
  // Minimal implementation to pass tests
}
```

#### Step 3: Component

```astro
---
// src/components/{{Feature}}.astro
import { featureFunction } from '../services/{{feature}}';
import { t } from '../i18n';

interface Props {
  // Props from PRP
}
---
<div class="[tailwind classes from PRP]">
  <!-- Minimal component to pass tests -->
</div>
```

#### Step 4: i18n

Create translation files for ALL languages specified in PRP:

```json
// src/i18n/en/{{feature}}.json
{
  "{{feature}}.title": "Title",
  "{{feature}}.description": "Description"
}
```

**Verify**: All tests MUST PASS.

```bash
npm test
# Expected: All tests passing
```

### Phase 3: REFACTOR - Improve Quality

**Goal**: Improve code while keeping tests green.

#### Refactoring Checklist

- [ ] Remove code duplication
- [ ] Improve variable/function names
- [ ] Extract reusable utilities
- [ ] Add JSDoc comments
- [ ] Optimize performance
- [ ] Ensure type safety

```bash
# After each refactor
npm test
# Must still pass
```

### Phase 4: Quality Gates

**Goal**: Verify ALL quality gates pass.

Execute validation commands from PRP:

```bash
# TypeScript
npm run typecheck
echo "TypeScript: PASS/FAIL"

# Unit Tests
npm test
echo "Tests: PASS/FAIL"

# Coverage
npm run test:coverage
echo "Coverage: XX% (target: ≥80%)"

# Lint
npm run lint
echo "Lint: PASS/FAIL"

# Build
npm run build
echo "Build: PASS/FAIL"

# Accessibility (if available)
npm run test:a11y
echo "A11y: PASS/FAIL"
```

### Phase 5: Documentation & PR

**Goal**: Complete documentation and prepare PR.

#### Update Documentation

- [ ] JSDoc comments on all public functions
- [ ] Update README if needed
- [ ] Component usage examples

#### Create Commit

```bash
git add .
git commit -m "feat({{feature}}): implement {{feature}} via PRP

- Add {{feature}} service with [key functionality]
- Create {{Feature}} component with [key features]
- Include i18n for all 7 languages
- Add unit and E2E tests (XX% coverage)

Implements: .specify/specs/{{id}}-{{feature}}/prd.md"
```

#### Create PR

```bash
git push -u origin feat/{{feature}}

gh pr create \
  --title "feat: {{feature}}" \
  --body "## Summary
Implements {{feature}} per PRP specification.

## Changes
- [ ] Service layer implementation
- [ ] Component creation
- [ ] i18n translations (7 languages)
- [ ] Unit tests (XX% coverage)
- [ ] E2E tests
- [ ] Accessibility compliance

## Testing
- [ ] npm test passes
- [ ] npm run build passes
- [ ] Manual testing completed

## Reference
- PRD: .specify/specs/{{id}}-{{feature}}/prd.md
- PRP: .specify/specs/{{id}}-{{feature}}/prp.md"
```

### Execution Summary

Provide summary after completion:

```markdown
## Implementation Complete

### Phase Results
- **RED**: X tests written, all failing
- **GREEN**: X tests passing
- **REFACTOR**: Code improved
- **QUALITY**: All gates passed

### Metrics
- Test Coverage: XX%
- TypeScript: Pass
- Lint: Pass
- Build: Pass
- A11y: Pass

### Files Created
- [List files]

### Files Modified
- [List files]

### PR Status
- Branch: feat/{{feature}}
- PR: #XX
- Status: Ready for review

### Confidence Score
[1-10] for one-pass success achieved
```

## Troubleshooting

### Tests Won't Pass
1. Review PRP acceptance criteria
2. Check test assertions match expected behavior
3. Verify implementation matches specification

### Coverage Below 80%
1. Identify uncovered lines
2. Add missing test cases
3. Test edge cases and error paths

### TypeScript Errors
1. Check type definitions
2. Verify imports
3. Fix type mismatches

### Accessibility Failures
1. Review axe-core violations
2. Add missing ARIA attributes
3. Fix color contrast issues
