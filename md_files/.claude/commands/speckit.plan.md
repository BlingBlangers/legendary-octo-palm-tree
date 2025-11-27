You are creating an implementation plan from an approved Spec Kit specification.

## Reference

$ARGUMENTS

## Your Task

Generate a comprehensive implementation plan based on the approved specification.

### Step 1: Review Specification

Read the referenced specification and extract:
1. All functional requirements
2. Non-functional requirements
3. Testing requirements
4. Dependencies

### Step 2: Design Architecture

Create an implementation plan in `.specify/specs/{{id}}-{{name}}/plan.md`:

```markdown
# {{Feature Name}} Implementation Plan

## Architecture Overview

### High-Level Design
[Description of the overall approach]

### Component Breakdown
```
[Component diagram or structure]
```

## Data Model

### New Types/Interfaces
```typescript
// Define new TypeScript interfaces
interface Example {
  id: string;
  // ...
}
```

### Schema Changes
[Database or data structure changes if applicable]

## API Design

### New Endpoints
```
METHOD /path
Request: { ... }
Response: { ... }
```

### Modified Endpoints
[Changes to existing APIs]

## Implementation Phases

### Phase 1: Foundation
**Goal**: Set up types, utilities, and infrastructure
**Duration**: [Estimate]

**Deliverables**:
- [ ] TypeScript interfaces defined
- [ ] Utility functions created
- [ ] Test infrastructure ready

### Phase 2: Backend
**Goal**: Implement server-side logic
**Duration**: [Estimate]

**Deliverables**:
- [ ] Services implemented
- [ ] API endpoints created
- [ ] Validation logic complete

### Phase 3: Frontend
**Goal**: Build user interface
**Duration**: [Estimate]

**Deliverables**:
- [ ] Components created
- [ ] State management implemented
- [ ] Styling complete

### Phase 4: Testing
**Goal**: Comprehensive test coverage
**Duration**: [Estimate]

**Deliverables**:
- [ ] Unit tests (≥80% coverage)
- [ ] Integration tests
- [ ] E2E tests
- [ ] Accessibility tests

### Phase 5: Documentation & Review
**Goal**: Complete documentation and review
**Duration**: [Estimate]

**Deliverables**:
- [ ] API documentation
- [ ] User documentation
- [ ] Code review complete
- [ ] PR ready

## Testing Strategy

### Unit Testing
- Framework: Vitest
- Coverage target: ≥80%
- Key test areas: [List]

### Integration Testing
- Focus areas: [List]

### E2E Testing
- Framework: Playwright
- Key flows: [List]

### Accessibility Testing
- axe-core integration
- Keyboard navigation
- Screen reader testing

## Migration Plan
[If applicable - data migration, feature flags, rollback strategy]

## Rollback Strategy
[How to revert if issues arise]

## Dependencies
- [Blocking dependencies]
- [Parallel work possible]
```

### Step 3: Review Plan

Present the plan for review:
1. Summarize phases and timeline
2. Highlight critical path
3. Note parallelization opportunities
4. Confirm testing strategy

## Output Location

Save plan to: `.specify/specs/{{id}}-{{feature-name}}/plan.md`

## Follow-up

After approval, proceed with:
- `/speckit.tasks` to break down into actionable tasks
