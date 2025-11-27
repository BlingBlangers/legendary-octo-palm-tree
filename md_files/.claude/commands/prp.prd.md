You are creating a comprehensive Product Requirements Document (PRD).

## Feature Request

$ARGUMENTS

## Prerequisites

Run `/prp.prime` first to load project knowledge.

## Your Task

Create a detailed PRD that defines "what" and "why" for the feature.

### Step 1: Research & Discovery

Before writing the PRD:
1. Understand the business need
2. Identify target users
3. Research existing solutions
4. Note technical constraints

### Step 2: Create PRD

Write the PRD to `.specify/specs/{{id}}-{{name}}/prd.md`:

```markdown
# {{Feature Name}} - Product Requirements Document

## 1. Overview

### Purpose
[Why this feature is needed]

### Scope
[What's included and explicitly excluded]

### Target Users
[Primary and secondary user personas]

## 2. Objectives & Goals

### Business Objectives
- [Objective 1]
- [Objective 2]

### User Goals
- [Goal 1]
- [Goal 2]

### Success Metrics
| Metric | Target | Measurement |
|--------|--------|-------------|
| [Metric 1] | [Target] | [How to measure] |
| [Metric 2] | [Target] | [How to measure] |

## 3. Key Features

### Feature 1: [Name]
[Description]

### Feature 2: [Name]
[Description]

## 4. User Stories / Use Cases

### Primary Use Case
**As a** [user type]
**I want to** [action]
**So that** [benefit]

**Scenario**:
1. User does X
2. System responds with Y
3. User sees Z

### Secondary Use Cases
[Additional use cases]

## 5. Requirements Table

| ID | Requirement | Priority | Status |
|----|-------------|----------|--------|
| REQ-1 | [Requirement description] | Must | Draft |
| REQ-2 | [Requirement description] | Should | Draft |
| REQ-3 | [Requirement description] | Could | Draft |

### Priority Definitions
- **Must**: Critical for launch
- **Should**: Important but not blocking
- **Could**: Nice to have
- **Won't**: Out of scope for this release

## 6. Success Metrics

### Quantitative Metrics
- [Metric with target]

### Qualitative Metrics
- [User satisfaction measure]

## 7. Constraints & Dependencies

### Technical Constraints
- [Constraint 1]
- [Constraint 2]

### Business Constraints
- [Timeline, budget, resources]

### Dependencies
- [External dependency]
- [Internal dependency]

## 8. Timeline & Milestones

| Milestone | Date | Description |
|-----------|------|-------------|
| Design Complete | [Date] | [Description] |
| Development Complete | [Date] | [Description] |
| Testing Complete | [Date] | [Description] |
| Launch | [Date] | [Description] |

## 9. Technical Considerations

### Testing Requirements
- Unit tests with ≥80% coverage
- Integration tests for API endpoints
- E2E tests for critical user flows
- Accessibility tests (WCAG 2.1 AA)

### Accessibility Requirements
- WCAG 2.1 Level AA compliance
- Keyboard navigable
- Screen reader compatible
- Color contrast requirements

### Internationalization
- All user-facing strings use i18n keys
- Support for [list languages]
- RTL support if applicable

### Performance Targets
- Page load: <3 seconds
- API response: <500ms
- Lighthouse score: >90

### Security Considerations
- [Security requirements]

## 10. Stakeholders

| Role | Name | Responsibility |
|------|------|----------------|
| Product Owner | [Name] | Requirements approval |
| Tech Lead | [Name] | Technical decisions |
| Designer | [Name] | UX/UI design |
| QA Lead | [Name] | Quality assurance |

## Appendix

### Glossary
[Define domain-specific terms]

### References
[Links to related documents]
```

### Step 3: Review PRD

Present for stakeholder review:
1. Summarize key requirements
2. Highlight success metrics
3. Note constraints and dependencies
4. Confirm scope boundaries

## Output Location

Save PRD to: `.specify/specs/{{id}}-{{feature-name}}/prd.md`

## Follow-up

After PRD approval, proceed with:
- `/prp.prp` to generate Product Requirements Prompt
