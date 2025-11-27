You are initializing a ClaudeFlow swarm for parallel agent execution.

## Configuration

$ARGUMENTS

## Your Task

Initialize a swarm topology for the specified work.

### Step 1: Analyze Requirements

Determine appropriate topology:

| Requirement | Recommended Topology |
|-------------|---------------------|
| Equal peer collaboration | `mesh` |
| Coordinator with specialists | `hierarchical` |
| Sequential processing | `ring` |
| Central hub coordination | `star` |

### Step 2: Initialize Swarm

```bash
# Initialize with chosen topology
npx claude-flow@alpha swarm init --topology [mesh|hierarchical|ring|star] --max-agents [3-8]
```

### Step 3: Configure Agents

Define agent roles for the task:

```javascript
// Example swarm configuration
[Swarm Configuration]:
  Topology: mesh
  Max Agents: 6

  Agents:
    - Type: backend-dev
      Role: "API development"

    - Type: coder
      Role: "Frontend components"

    - Type: tester
      Role: "Test creation"

    - Type: reviewer
      Role: "Code review"
```

### Topology Guidelines

#### Mesh (Default)
- Best for: Collaborative work
- All agents can communicate
- No hierarchy
- Good for 3-5 agents

#### Hierarchical
- Best for: Complex features
- Coordinator manages workers
- Clear delegation
- Good for 4-8 agents

#### Ring
- Best for: Pipeline processing
- Sequential handoff
- Each agent processes then passes
- Good for ordered workflows

#### Star
- Best for: Central coordination
- Hub controls all communication
- Simple coordination
- Good for 3-6 agents

## Output

After initialization:
1. Confirm topology
2. List configured agents
3. Show coordination pattern
4. Recommend next steps

## Follow-up

After initialization:
- `/swarm/swarm-spawn` to spawn agents
- Use Task tool to execute parallel work
