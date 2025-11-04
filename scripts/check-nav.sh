#!/bin/bash
# Navigation verification script
# Checks if live navigation matches canonical

set -euo pipefail

CANONICAL=".github/canonical/menus.yaml"
LIVE="config/_default/menus.yaml"

if [ ! -f "$CANONICAL" ]; then
    echo "Error: Canonical nav file not found at $CANONICAL"
    exit 1
fi

if [ ! -f "$LIVE" ]; then
    echo "Error: Live nav file not found at $LIVE"
    exit 1
fi

if cmp -s "$CANONICAL" "$LIVE"; then
    echo "✓ Navigation in sync"
    exit 0
else
    echo "✗ Navigation drift detected"
    echo "Canonical: $CANONICAL"
    echo "Live: $LIVE"
    echo ""
    echo "Run scripts/sync-nav.sh to sync or ensure PR title begins with 'Nav Change Request'"
    exit 1
fi
