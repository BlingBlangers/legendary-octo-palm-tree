You are building consensus from hive-mind collective insights.

## Topic

$ARGUMENTS

## Your Task

Synthesize all agent perspectives into a consensus recommendation.

### Step 1: Gather All Perspectives

Retrieve all stored insights:

```bash
# List all memory entries
npx claude-flow@alpha memory list

# Retrieve each perspective
npx claude-flow@alpha memory retrieve --key "hive-[topic]-p1"
npx claude-flow@alpha memory retrieve --key "hive-[topic]-p2"
npx claude-flow@alpha memory retrieve --key "hive-[topic]-p3"
```

### Step 2: Analyze Perspectives

Create analysis matrix:

```markdown
## Perspective Analysis

### Perspective 1: [Name]
- **Agent Type**: [type]
- **Confidence**: [1-10]
- **Key Findings**: [summary]
- **Recommendations**: [list]
- **Concerns**: [list]

### Perspective 2: [Name]
[Same structure]

### Perspective 3: [Name]
[Same structure]
```

### Step 3: Identify Patterns

| Aspect | Agreement Level | Notes |
|--------|-----------------|-------|
| [Topic 1] | Strong/Moderate/Low | [Details] |
| [Topic 2] | Strong/Moderate/Low | [Details] |
| [Topic 3] | Strong/Moderate/Low | [Details] |

### Step 4: Build Consensus

```markdown
## Consensus Document

### Decision
[Clear statement of the consensus decision]

### Rationale
1. [Reason 1 - supported by perspectives X, Y]
2. [Reason 2 - supported by perspectives Y, Z]
3. [Reason 3 - unanimous support]

### Key Agreements
- [Agreement 1] - Confidence: High
- [Agreement 2] - Confidence: High
- [Agreement 3] - Confidence: Medium

### Dissenting Views
- [Perspective X noted concern about...]
- [Mitigating approach: ...]

### Risk Assessment
| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|
| [Risk 1] | Low/Med/High | Low/Med/High | [Approach] |

### Recommended Actions
1. [Action 1] - Priority: P0
2. [Action 2] - Priority: P1
3. [Action 3] - Priority: P2

### Confidence Score
**Overall Consensus Confidence**: [1-10]

**Breakdown**:
- Technical feasibility: [score]
- Resource requirements: [score]
- Risk level: [score]
- Timeline realism: [score]
```

### Step 5: Store Consensus

```bash
# Store final consensus
npx claude-flow@alpha memory store \
  --key "hive-[topic]-consensus" \
  --value "[consensus JSON]"
```

### Step 6: Document Decision

Create decision record if significant:

```markdown
# Decision Record: [Topic]

**Date**: [Date]
**Status**: Approved
**Participants**: [Agent types]

## Context
[Why this decision was needed]

## Decision
[What was decided]

## Consequences
- [Consequence 1]
- [Consequence 2]

## References
- hive-[topic]-p1: [summary]
- hive-[topic]-p2: [summary]
- hive-[topic]-consensus: [link to consensus]
```

## Output

Provide:
1. Complete consensus document
2. Recommended actions with priorities
3. Confidence score
4. Next steps

## Follow-up

- Store in `.specify/decisions/` if architectural
- Proceed with implementation per consensus
- `/hive-mind/hive-mind-stop` to end session
