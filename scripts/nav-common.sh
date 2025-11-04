#!/bin/bash
# Shared navigation configuration
# Source this file in other navigation scripts to get common variables

# Navigation file paths
export NAV_CANONICAL=".github/canonical/menus.yaml"
export NAV_LIVE="config/_default/menus.yaml"

# Validation function for navigation files
validate_nav_files() {
    if [ ! -f "$NAV_CANONICAL" ]; then
        echo "Error: Canonical nav file not found at $NAV_CANONICAL"
        return 1
    fi
    
    if [ ! -f "$NAV_LIVE" ]; then
        echo "Error: Live nav file not found at $NAV_LIVE"
        return 1
    fi
    
    return 0
}
