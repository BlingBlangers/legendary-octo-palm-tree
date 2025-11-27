You are implementing tasks using strict TDD methodology (RED-GREEN-REFACTOR).

## Reference

$ARGUMENTS

## Your Task

Execute implementation following TDD principles for each task.

### TDD Workflow

For EACH task, follow this strict order:

#### 1. RED Phase - Write Failing Tests First

```bash
# Before writing ANY implementation code:
# 1. Create test file
# 2. Write test cases for ALL acceptance criteria
# 3. Run tests - they MUST fail

npm test -- --watch  # Keep tests running
```

Example test structure:
```typescript
describe('FeatureName', () => {
  describe('acceptance criteria 1', () => {
    it('should [expected behavior]', () => {
      // Arrange
      // Act
      // Assert
      expect(result).toBe(expected);
    });
  });

  describe('acceptance criteria 2', () => {
    it('should [expected behavior]', () => {
      // Test implementation
    });
  });

  // Edge cases
  describe('edge cases', () => {
    it('should handle empty input', () => {});
    it('should handle invalid input', () => {});
  });
});
```

#### 2. GREEN Phase - Minimal Implementation

```bash
# Write the MINIMUM code to make tests pass
# Do NOT optimize yet
# Do NOT add extra features

npm test  # All tests should pass
```

Implementation guidelines:
- Write simplest code that passes tests
- Don't add functionality not covered by tests
- Keep functions small and focused

#### 3. REFACTOR Phase - Improve Code Quality

```bash
# Now improve the code while keeping tests green
# Extract helpers, improve naming, optimize

npm test  # Must still pass after refactoring
```

Refactoring checklist:
- [ ] Remove duplication
- [ ] Improve naming
- [ ] Extract reusable functions
- [ ] Add JSDoc comments
- [ ] Ensure type safety

### Quality Verification

After EACH task, verify:

```bash
# Type checking
npm run typecheck

# Unit tests
npm test

# Coverage check (must be ≥80%)
npm run test:coverage

# Lint
npm run lint

# Build
npm run build
```

### Task Progress Tracking

Update task status in `tasks.md`:
- Mark completed acceptance criteria with [x]
- Note any deviations from plan
- Document blockers if encountered

### Implementation Order

1. Read task from `tasks.md`
2. Mark task as "in progress"
3. RED: Write failing tests
4. GREEN: Implement to pass
5. REFACTOR: Improve code
6. Verify quality gates
7. Mark task as "complete"
8. Commit with conventional commit message
9. Move to next task

### Commit Pattern

After each task:
```bash
git add .
git commit -m "feat(feature): implement task X.Y - [description]"
```

### Example Session

```
Starting Task 2.1: Implement Search Service

[RED PHASE]
Creating test file: src/services/search.test.ts
Writing tests for:
- ✓ Search with exact match
- ✓ Fuzzy matching
- ✓ Empty query handling
- ✓ i18n support

Running tests... 4 failing (expected)

[GREEN PHASE]
Implementing: src/services/search.ts
Running tests... 4 passing

[REFACTOR PHASE]
Extracting fuzzy match helper
Improving type definitions
Running tests... 4 passing

[VERIFY]
✓ TypeScript: No errors
✓ Tests: 4 passing
✓ Coverage: 92%
✓ Lint: No issues
✓ Build: Success

[COMMIT]
git commit -m "feat(search): implement search service with fuzzy matching"

Task 2.1 complete. Moving to Task 2.2...
```

## Output

Provide progress updates:
1. Current task being implemented
2. TDD phase (RED/GREEN/REFACTOR)
3. Test results
4. Quality gate status
5. Blockers if any

## Follow-up

After all tasks complete:
- `/speckit.analyze` to verify completeness
- Create PR for review
