#!/bin/bash

# Sync Claude commands and agents to the local Claude configuration

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

CLAUDE_CONFIG_DIR="$HOME/.claude"
COMMANDS_DEST="$CLAUDE_CONFIG_DIR/commands"
AGENTS_DEST="$CLAUDE_CONFIG_DIR/agents"

echo "Syncing Claude shared tools to $CLAUDE_CONFIG_DIR"

# Create destination directories if they don't exist
mkdir -p "$COMMANDS_DEST"
mkdir -p "$AGENTS_DEST"

# Sync commands
if [ -d "$PROJECT_ROOT/commands" ] && [ "$(ls -A "$PROJECT_ROOT/commands")" ]; then
    echo "Copying commands..."
    cp -v "$PROJECT_ROOT/commands/"* "$COMMANDS_DEST/" 2>/dev/null || true
    echo "Commands synced to $COMMANDS_DEST"
else
    echo "No commands to sync"
fi

# Sync agents
if [ -d "$PROJECT_ROOT/agents" ] && [ "$(ls -A "$PROJECT_ROOT/agents")" ]; then
    echo "Copying agents..."
    cp -v "$PROJECT_ROOT/agents/"* "$AGENTS_DEST/" 2>/dev/null || true
    echo "Agents synced to $AGENTS_DEST"
else
    echo "No agents to sync"
fi

echo "Sync complete!"