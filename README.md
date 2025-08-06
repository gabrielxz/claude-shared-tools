# Claude Shared Tools

A collection of custom commands, agents, and scripts for Claude that can be shared across multiple PCs.

## Structure

- `commands/` - Custom Claude commands
- `agents/` - Custom Claude agents  
- `scripts/` - Utility scripts for managing the tools

## Setup

1. Clone this repository
2. Run the sync script to copy files to your Claude configuration:
   ```bash
   ./scripts/sync-to-claude.sh
   ```

This will copy:
- Commands to `~/.claude/commands/`
- Agents to `~/.claude/agents/`

## Files

### Commands
- `implement-jira.md` - Command for implementing JIRA tickets
- `plan-jira.md` - Command for planning JIRA tickets

### Scripts
- `sync-to-claude.sh` - Syncs commands and agents to Claude configuration directory