# Prime Core - Project Knowledge Base

This document contains the core knowledge needed for AI-assisted development in this project.

## Project Overview

**Repository**: legendary-octo-palm-tree
**Purpose**: Documentation and agent configuration system for Claude Code

### What This Project Is
- Documentation-driven repository (Markdown-only)
- Agent personality definitions and configurations
- Operational playbooks and strategic guidelines
- Prompt engineering patterns

### What This Project Is NOT
- Traditional application code
- Compiled/built software
- Runtime executable

## Tech Stack

| Layer | Technology | Version |
|-------|------------|---------|
| Content Format | Markdown | - |
| Metadata | YAML frontmatter | - |
| Linting | markdownlint-cli | Latest |
| Formatting | Prettier | Latest |
| Version Control | Git/GitHub | - |

## Directory Structure

```
legendary-octo-palm-tree/
├── md_files/                    # Primary resource hub
│   ├── .claude/
│   │   ├── agents/              # Agent personality files
│   │   └── commands/            # Slash commands
│   └── .specify/                # Spec Kit artifacts
│       ├── memory/              # Constitution and memory
│       ├── specs/               # Feature specifications
│       ├── templates/           # Spec templates
│       └── decisions/           # Architecture decisions
├── docs/
│   └── strategies/              # Strategic documentation
├── chats/                       # Conversation logs
├── AGENTS.md                    # Repository guidelines
├── CLAUDE.md                    # Main guidance file
└── README.md                    # Project introduction
```

## Development Workflow

### For Documentation Changes
1. Edit Markdown files
2. Run linting: `npx markdownlint-cli "**/*.md"`
3. Run formatting: `npx prettier --write "**/*.md"`
4. Commit with conventional message
5. Create PR

### For Agent Definitions
1. Create/edit in `md_files/.claude/agents/`
2. Follow YAML frontmatter structure
3. Include role, responsibilities, and tools
4. Validate Markdown formatting
5. Commit and PR

### For Slash Commands
1. Create/edit in `md_files/.claude/commands/`
2. Use `$ARGUMENTS` for user input
3. Provide clear instructions
4. Test command functionality
5. Commit and PR

## Agent File Format

```markdown
---
name: Agent Name
description: Brief description
tools: [Read, Write, Edit, Bash]
---

# Agent Name

## Role & Responsibilities
[Detailed scope]

## Expertise Areas
[Domain knowledge]

## Best Practices
[Guidelines followed]
```

## Quality Standards

### Markdown Style
- Line length: ~100 characters
- Headings: Sentence-case
- Lists: Unordered (`-`) for tasks
- Code blocks: Language specified

### Naming Conventions
- Agent files: `lowercase-kebab-case.md`
- Special files: `UPPERCASE.md`
- Strategy docs: `lowercase_snake_case.md`

### Content Quality
- Clear, direct language
- Second-person instructions
- No unnecessary emojis
- Actionable guidance

## Key Constraints

### Always Do
- Lint before committing
- Use conventional commits
- Follow existing patterns
- Keep files focused

### Never Do
- Create unnecessary files
- Skip validation steps
- Use emojis unless requested
- Break existing conventions

## Anti-Patterns

### Documentation
- Wall of text without structure
- Missing code examples
- Unclear instructions
- Outdated information

### Agent Definitions
- Overlapping responsibilities
- Missing tool specifications
- Vague scope definitions
- No best practices section

### Slash Commands
- No $ARGUMENTS handling
- Unclear workflow steps
- Missing follow-up guidance
- No error handling

## Available Tools

### Spec Kit Commands
- `/speckit.constitution` - Review project principles
- `/speckit.specify` - Create feature specification
- `/speckit.plan` - Generate implementation plan
- `/speckit.tasks` - Break into actionable tasks
- `/speckit.implement` - Execute with TDD
- `/speckit.analyze` - Verify completeness

### PRP Commands
- `/prp.prime` - Load project knowledge
- `/prp.prd` - Create PRD
- `/prp.prp` - Generate PRP
- `/prp.execute` - Implement feature

### ClaudeFlow Commands
- `/swarm/swarm` - Swarm orchestration
- `/swarm/swarm-init` - Initialize swarm
- `/swarm/swarm-spawn` - Spawn agents
- `/hive-mind/hive-mind` - Collective intelligence

## Decision Framework

### When to Use Spec Kit
- Non-trivial features
- Multi-file changes
- Complex requirements
- Needs traceability

### When to Use PRP
- Stakeholder documentation
- Deep research needed
- One-pass implementation
- Complete context required

### When to Use ClaudeFlow
- Parallel work possible
- Multi-component features
- Research across areas
- Complex analysis

### When to Skip Tools
- Simple bug fixes
- Single-file changes
- Documentation typos
- Configuration tweaks

---

**Last Updated**: 2025-11-26
**Version**: 1.0.0
