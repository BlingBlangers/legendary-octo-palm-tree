You are breaking down an implementation plan into actionable, time-boxed tasks.

## Reference

$ARGUMENTS

## Your Task

Convert the implementation plan into specific, executable tasks.

### Step 1: Review Plan

Read the referenced plan and identify:
1. All phases and deliverables
2. Dependencies between work items
3. Parallelization opportunities
4. Test requirements per component

### Step 2: Generate Tasks

Create tasks in `.specify/specs/{{id}}-{{name}}/tasks.md`:

```markdown
# {{Feature Name}} Tasks

## Task Overview

| Phase | Tasks | Estimated Hours |
|-------|-------|-----------------|
| Foundation | X | Y hours |
| Backend | X | Y hours |
| Frontend | X | Y hours |
| Testing | X | Y hours |
| Documentation | X | Y hours |
| **Total** | **X** | **Y hours** |

## Phase 1: Foundation

### Task 1.1: Define TypeScript Interfaces
**Estimated**: 2 hours
**Priority**: P0 (Critical)
**Dependencies**: None

**Description**:
Create TypeScript interfaces for [feature].

**Acceptance Criteria**:
- [ ] Interfaces defined in `src/types/`
- [ ] Export from index file
- [ ] JSDoc comments added

**Files to Create/Modify**:
- `src/types/{{feature}}.ts` (new)
- `src/types/index.ts` (modify)

**Tests Required**:
- Type compilation passes
- No TypeScript errors

---

### Task 1.2: Create Utility Functions
**Estimated**: 3 hours
**Priority**: P0 (Critical)
**Dependencies**: Task 1.1

**Description**:
Implement utility functions for [feature].

**Acceptance Criteria**:
- [ ] Functions implemented
- [ ] Unit tests written
- [ ] ≥90% coverage

**Files to Create/Modify**:
- `src/utils/{{feature}}.ts` (new)
- `src/utils/{{feature}}.test.ts` (new)

**Tests Required**:
- Happy path tests
- Edge case tests
- Error handling tests

---

## Phase 2: Backend

### Task 2.1: Implement Service Layer
**Estimated**: 4 hours
**Priority**: P0 (Critical)
**Dependencies**: Task 1.1, Task 1.2

[Continue pattern for all tasks...]

---

## Phase 3: Frontend

### Task 3.1: Create Component
**Estimated**: 4 hours
**Priority**: P0 (Critical)
**Dependencies**: Task 2.1

[Continue pattern...]

---

## Phase 4: Testing

### Task 4.1: Write E2E Tests
**Estimated**: 3 hours
**Priority**: P1 (High)
**Dependencies**: Task 3.1

[Continue pattern...]

---

## Phase 5: Documentation

### Task 5.1: Update Documentation
**Estimated**: 2 hours
**Priority**: P1 (High)
**Dependencies**: Task 4.1

[Continue pattern...]

---

## Dependency Graph

```
Task 1.1 ──┬── Task 1.2
           │
           └── Task 2.1 ──┬── Task 2.2
                          │
                          └── Task 3.1 ── Task 4.1 ── Task 5.1
```

## Critical Path

1. Task 1.1 → Task 1.2 → Task 2.1 → Task 3.1 → Task 4.1 → Task 5.1

## Parallelization Opportunities

- Task X.X and Task Y.Y can run in parallel
- [List other parallel opportunities]
```

### Task Requirements

Each task MUST have:
- **Estimated time**: 2-6 hours (ideal size)
- **Priority**: P0 (Critical), P1 (High), P2 (Medium)
- **Dependencies**: List all blocking tasks
- **Acceptance criteria**: Checkboxes, testable
- **Files**: Specific files to create/modify
- **Tests required**: What tests to write

### Step 3: Review Tasks

Present tasks for review:
1. Total estimated hours
2. Critical path identified
3. Parallelization opportunities
4. All acceptance criteria testable

## Output Location

Save tasks to: `.specify/specs/{{id}}-{{feature-name}}/tasks.md`

## Follow-up

After approval, proceed with:
- `/speckit.implement` to begin TDD implementation
