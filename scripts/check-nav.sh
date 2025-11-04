#!/bin/bash
# Navigation verification script
# Checks if live navigation matches canonical

set -euo pipefail

# Source common navigation variables and functions
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/nav-common.sh"

# Validate navigation files exist
validate_nav_files || exit 1

if cmp -s "$NAV_CANONICAL" "$NAV_LIVE"; then
    echo "✓ Navigation in sync"
    exit 0
else
    echo "✗ Navigation drift detected"
    echo "Canonical: $NAV_CANONICAL"
    echo "Live: $NAV_LIVE"
    echo ""
    echo "Run scripts/sync-nav.sh to sync or ensure PR title begins with 'Nav Change Request'"
    exit 1
fi
