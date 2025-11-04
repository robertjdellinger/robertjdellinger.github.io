#!/bin/bash
# Idempotent navigation sync script
# Copies canonical navigation to live config if different

set -euo pipefail

CANONICAL=".github/canonical/menus.yaml"
LIVE="config/_default/menus.yaml"

if [ ! -f "$CANONICAL" ]; then
    echo "Error: Canonical nav file not found at $CANONICAL"
    exit 1
fi

# Create config directory if it doesn't exist
mkdir -p "$(dirname "$LIVE")"

# Copy if different or if live doesn't exist
if [ ! -f "$LIVE" ] || ! cmp -s "$CANONICAL" "$LIVE"; then
    echo "Syncing navigation: $CANONICAL -> $LIVE"
    cp "$CANONICAL" "$LIVE"
    echo "Navigation synced successfully"
else
    echo "Navigation already in sync"
fi
