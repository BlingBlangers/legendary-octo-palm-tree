You are analyzing Spec Kit artifacts for completeness and consistency.

## Reference

$ARGUMENTS

## Your Task

Verify all Spec Kit artifacts are complete, consistent, and quality gates are met.

### Analysis Checklist

#### 1. Specification Completeness

Check `.specify/specs/{{id}}-{{name}}/spec.md`:

- [ ] Executive summary present
- [ ] Problem statement (current vs desired)
- [ ] User stories with acceptance criteria
- [ ] Functional requirements (prioritized)
- [ ] Non-functional requirements
  - [ ] Performance targets defined
  - [ ] Accessibility requirements (WCAG 2.1 AA)
  - [ ] i18n requirements
  - [ ] Security considerations
- [ ] Testing strategy defined
- [ ] Dependencies listed
- [ ] Risks identified

#### 2. Plan Completeness

Check `.specify/specs/{{id}}-{{name}}/plan.md`:

- [ ] Architecture overview
- [ ] Component breakdown
- [ ] Data model/types defined
- [ ] API design (if applicable)
- [ ] Implementation phases defined
- [ ] Testing strategy per phase
- [ ] Migration plan (if applicable)
- [ ] Rollback strategy

#### 3. Task Completeness

Check `.specify/specs/{{id}}-{{name}}/tasks.md`:

- [ ] All phases have tasks
- [ ] Tasks are right-sized (2-6 hours)
- [ ] Dependencies mapped
- [ ] Acceptance criteria are testable
- [ ] Files to modify listed
- [ ] Test requirements specified
- [ ] Critical path identified

#### 4. Requirements Traceability

Verify mapping:

| Spec Requirement | Plan Phase | Task(s) | Test(s) |
|-----------------|------------|---------|---------|
| FR-1 | Phase 2 | Task 2.1 | search.test.ts |
| FR-2 | Phase 3 | Task 3.1 | component.test.ts |

- [ ] Every requirement maps to a task
- [ ] Every task maps to tests
- [ ] No orphan tasks (tasks without requirements)

#### 5. Test Coverage Analysis

```bash
# Run coverage report
npm run test:coverage
```

Verify:
- [ ] Overall coverage ≥80%
- [ ] All acceptance criteria have tests
- [ ] E2E tests for critical paths
- [ ] Accessibility tests included
- [ ] i18n tests for all languages

#### 6. Quality Gate Verification

```bash
# All must pass
npm run typecheck
npm test
npm run lint
npm run build
npm run test:a11y  # If available
```

#### 7. Implementation Verification

- [ ] All tasks marked complete
- [ ] No TODO comments left in code
- [ ] No console.log statements
- [ ] No hardcoded strings (i18n used)
- [ ] All types properly defined

### Analysis Report

Generate report:

```markdown
# Spec Kit Analysis Report

## Specification: {{id}}-{{name}}

### Summary
- **Status**: Complete/Incomplete
- **Coverage**: XX%
- **Quality Gates**: Pass/Fail

### Requirements Coverage
| Category | Total | Covered | Percentage |
|----------|-------|---------|------------|
| Functional | X | Y | Z% |
| Non-Functional | X | Y | Z% |
| Accessibility | X | Y | Z% |
| i18n | X | Y | Z% |

### Test Coverage
| Type | Tests | Passing | Coverage |
|------|-------|---------|----------|
| Unit | X | Y | Z% |
| Integration | X | Y | Z% |
| E2E | X | Y | Z% |
| Accessibility | X | Y | Z% |

### Quality Gates
- [ ] TypeScript: Pass/Fail
- [ ] Unit Tests: Pass/Fail
- [ ] Coverage ≥80%: Pass/Fail
- [ ] Lint: Pass/Fail
- [ ] Build: Pass/Fail
- [ ] Accessibility: Pass/Fail

### Gaps Found
1. [Gap description and recommendation]
2. [Gap description and recommendation]

### Recommendations
1. [Action item]
2. [Action item]

### Ready for PR: Yes/No
```

### Gap Resolution

If gaps found:
1. Identify missing items
2. Create additional tasks if needed
3. Re-run implementation for gaps
4. Re-analyze until complete

## Output

Provide:
1. Analysis report
2. Gap list (if any)
3. Recommended actions
4. PR readiness status

## Follow-up

If analysis passes:
- Create PR with spec reference
- Request code review

If gaps found:
- Return to `/speckit.implement` for fixes
- Re-run `/speckit.analyze` after fixes
