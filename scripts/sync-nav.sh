#!/bin/bash
# Idempotent navigation sync script
# Copies canonical navigation to live config if different

set -euo pipefail

# Source common navigation variables and functions
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/nav-common.sh"

# Validate canonical file exists
if [ ! -f "$NAV_CANONICAL" ]; then
    echo "Error: Canonical nav file not found at $NAV_CANONICAL"
    exit 1
fi

# Create config directory if it doesn't exist
mkdir -p "$(dirname "$NAV_LIVE")"

# Copy if different or if live doesn't exist
if [ ! -f "$NAV_LIVE" ] || ! cmp -s "$NAV_CANONICAL" "$NAV_LIVE"; then
    echo "Syncing navigation: $NAV_CANONICAL -> $NAV_LIVE"
    cp "$NAV_CANONICAL" "$NAV_LIVE"
    echo "Navigation synced successfully"
else
    echo "Navigation already in sync"
fi
