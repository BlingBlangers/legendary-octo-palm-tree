You are checking the status of a ClaudeFlow swarm.

## Your Task

Report on the current state of all swarm agents and tasks.

### Status Check Commands

```bash
# Get swarm status
npx claude-flow@alpha swarm status

# Get detailed agent metrics
npx claude-flow@alpha swarm monitor
```

### Status Report Format

```markdown
## Swarm Status Report

### Configuration
- **Topology**: [mesh/hierarchical/ring/star]
- **Max Agents**: [number]
- **Active Agents**: [number]
- **Session ID**: [id]

### Agent Status

| Agent | Type | Task | Status | Progress |
|-------|------|------|--------|----------|
| Backend Dev | backend-dev | API endpoints | In Progress | 60% |
| Frontend Dev | coder | Components | In Progress | 40% |
| Tester | tester | Unit tests | Pending | 0% |

### Task Progress

| Task | Assigned To | Status | Notes |
|------|-------------|--------|-------|
| Build API | Backend Dev | In Progress | 3/5 endpoints done |
| Create UI | Frontend Dev | In Progress | 2/4 components done |
| Write Tests | Tester | Pending | Waiting on API |

### Coordination Events

- [Timestamp] Backend Dev stored api-contract
- [Timestamp] Frontend Dev retrieved api-contract
- [Timestamp] Tester triggered test generation

### Blockers

- [List any blocking issues]

### Next Actions

1. [Recommended action]
2. [Recommended action]
```

### Status Indicators

| Status | Meaning |
|--------|---------|
| `Pending` | Not started |
| `In Progress` | Currently working |
| `Blocked` | Waiting on dependency |
| `Complete` | Task finished |
| `Failed` | Error occurred |

### Memory State

Check shared memory:
```bash
npx claude-flow@alpha memory list
```

### Performance Metrics

```bash
# Get agent performance
npx claude-flow@alpha swarm metrics

# Check for bottlenecks
npx claude-flow@alpha swarm analyze
```

## Output

Provide:
1. Current status summary
2. Agent progress breakdown
3. Any blockers or issues
4. Recommended next actions

## Follow-up

- `/swarm/swarm-monitor` for continuous monitoring
- Address blockers as needed
- Complete pending tasks
