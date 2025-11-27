You are initializing a ClaudeFlow hive-mind session for collective intelligence.

## Purpose

$ARGUMENTS

## Your Task

Initialize a hive-mind session for collective decision-making.

### Step 1: Initialize Session

```bash
# Initialize new hive-mind
npx claude-flow@alpha hive-mind init

# Force reset if needed
npx claude-flow@alpha hive-mind init --force
```

### Step 2: Configure Purpose

Define the collective intelligence goal:

```markdown
## Hive-Mind Configuration

### Purpose
[What decision or analysis needs collective intelligence]

### Perspectives Needed
1. [Perspective 1] - Agent type: [type]
2. [Perspective 2] - Agent type: [type]
3. [Perspective 3] - Agent type: [type]

### Memory Keys to Use
- `hive-[topic]-[agent]` - Individual insights
- `hive-[topic]-consensus` - Final consensus

### Success Criteria
- All perspectives gathered
- Consensus reached
- Decision documented
```

### Step 3: Spawn Perspective Agents

In a SINGLE message, spawn all perspective agents:

```javascript
[Hive Agents]:
  Task("Perspective 1", "Analyze from [angle]. Store in memory key: hive-topic-p1", "agent-type")
  Task("Perspective 2", "Analyze from [angle]. Store in memory key: hive-topic-p2", "agent-type")
  Task("Perspective 3", "Analyze from [angle]. Store in memory key: hive-topic-p3", "agent-type")
```

### Agent Instructions Template

Each agent should:
1. Analyze from their perspective
2. Document findings
3. Store in shared memory
4. Note confidence level

```
"Analyze [topic] from [perspective].

FOCUS:
- [Specific aspects to analyze]

DELIVERABLES:
1. Analysis document
2. Recommendations
3. Confidence level (1-10)

MEMORY:
Store findings in: hive-[topic]-[perspective]

FORMAT:
{
  perspective: "[name]",
  findings: "[analysis]",
  recommendations: ["rec1", "rec2"],
  confidence: [1-10],
  concerns: ["concern1"]
}"
```

### Step 4: Verify Initialization

```bash
# Check hive status
npx claude-flow@alpha hive-mind status

# List memory entries
npx claude-flow@alpha memory list
```

## Output

After initialization:
1. Session ID
2. Active agents
3. Memory keys in use
4. Next steps for consensus

## Follow-up

- Wait for agents to complete analysis
- `/hive-mind/hive-mind-consensus` to build consensus
- `/hive-mind/hive-mind-status` to check progress
