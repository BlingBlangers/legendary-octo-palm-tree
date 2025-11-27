You are spawning agents for a ClaudeFlow swarm.

## Task Description

$ARGUMENTS

## Your Task

Spawn specialized agents to work in parallel on the specified task.

### Critical: Execution Pattern

**ALL Task calls MUST be in a SINGLE message for parallel execution.**

```javascript
// CORRECT - Single message with all agents
[Single Message]:
  Task("Agent 1", "description", "agent-type")
  Task("Agent 2", "description", "agent-type")
  Task("Agent 3", "description", "agent-type")

// WRONG - Multiple messages (runs sequentially)
Message 1: Task("Agent 1", ...)
Message 2: Task("Agent 2", ...)
```

### Step 1: Define Agent Roles

Based on the task, identify needed agents:

#### Full-Stack Feature
```javascript
Task("Backend Developer", "Build REST API endpoints with Express", "backend-dev")
Task("Frontend Developer", "Create Astro components with Tailwind", "coder")
Task("Test Engineer", "Write Vitest and Playwright tests", "tester")
Task("Security Auditor", "Review authentication and validation", "reviewer")
Task("Docs Writer", "Create API documentation", "api-docs")
```

#### Code Review
```javascript
Task("Code Quality", "Review code style and patterns", "reviewer")
Task("Security Review", "Check for vulnerabilities", "security-manager")
Task("Performance", "Analyze performance bottlenecks", "perf-analyzer")
Task("Test Coverage", "Verify test completeness", "tester")
```

#### Research
```javascript
Task("Researcher", "Analyze existing solutions", "researcher")
Task("Architect", "Evaluate architecture options", "system-architect")
Task("Planner", "Create implementation plan", "planner")
```

### Step 2: Prepare Agent Instructions

Each agent should include:
1. Clear task description
2. Specific deliverables
3. Quality requirements
4. Coordination hooks

Example agent instruction:
```
"Build REST API endpoints with Express.

REQUIREMENTS:
- Implement CRUD operations for [resource]
- Follow existing patterns in src/api/
- Include input validation
- Use TypeScript strict mode

COORDINATION:
- Run: npx claude-flow@alpha hooks pre-task --description "API development"
- After edits: npx claude-flow@alpha hooks post-edit --file "[file]"

DELIVERABLES:
- src/api/[resource].ts
- src/api/[resource].test.ts

QUALITY:
- TypeScript passes
- Tests pass with ≥80% coverage"
```

### Step 3: Spawn Agents

Execute all agents in parallel (single message):

```javascript
[Parallel Agent Execution]:
  Task("Backend Developer", "[full instructions]", "backend-dev")
  Task("Frontend Developer", "[full instructions]", "coder")
  Task("Test Engineer", "[full instructions]", "tester")
```

### Step 4: Monitor Progress

After spawning:
```bash
# Check swarm status
npx claude-flow@alpha swarm status

# Monitor agent activity
npx claude-flow@alpha swarm monitor
```

## Agent Coordination

### Memory Sharing
```bash
# Store shared data
npx claude-flow@alpha memory store --key "api-contract" --value "[contract]"

# Retrieve in other agents
npx claude-flow@alpha memory retrieve --key "api-contract"
```

### Hooks for Coordination
```bash
# Pre-task
npx claude-flow@alpha hooks pre-task --description "[task]"

# Post-edit
npx claude-flow@alpha hooks post-edit --file "[file]"

# Post-task
npx claude-flow@alpha hooks post-task --task-id "[id]"
```

## Output

After spawning:
1. List active agents
2. Show task assignments
3. Note coordination pattern
4. Monitor for completion

## Follow-up

- `/swarm/swarm-status` to check progress
- `/swarm/swarm-monitor` for detailed monitoring
