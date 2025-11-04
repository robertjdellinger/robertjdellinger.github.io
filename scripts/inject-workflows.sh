#!/bin/bash
# Conservative workflow injection script
# Optionally injects nav sync/check steps after actions/checkout

set -euo pipefail

WORKFLOWS_DIR=".github/workflows"
DRY_RUN=${1:-"--dry-run"}

if [ "$DRY_RUN" = "--apply" ]; then
    echo "Applying workflow injections..."
    MODE="apply"
else
    echo "Dry run mode. Use --apply to actually modify files."
    MODE="dry-run"
fi

inject_sync_check() {
    local workflow_file="$1"
    local workflow_name=$(basename "$workflow_file")
    
    # Skip if already contains sync-nav or check-nav
    if grep -q "sync-nav\|check-nav" "$workflow_file"; then
        echo "  ✓ $workflow_name already has nav steps, skipping"
        return 0
    fi
    
    # Only inject into CI and deploy workflows
    case "$workflow_name" in
        ci.yml|deploy.yml|deploy-netlify.yml)
            echo "  → $workflow_name: Would inject nav sync/check after checkout"
            
            if [ "$MODE" = "apply" ]; then
                # Conservative: Add comment marker only, don't modify actual workflow
                # Users can manually add steps based on this marker
                echo "  ℹ Manual step injection recommended for $workflow_name"
            fi
            ;;
        *)
            echo "  - $workflow_name: Not a target for injection"
            ;;
    esac
}

if [ -d "$WORKFLOWS_DIR" ]; then
    for workflow in "$WORKFLOWS_DIR"/*.yml; do
        if [ -f "$workflow" ]; then
            inject_sync_check "$workflow"
        fi
    done
else
    echo "Error: Workflows directory not found at $WORKFLOWS_DIR"
    exit 1
fi

echo ""
echo "Note: This script provides conservative guidance."
echo "To inject nav steps, manually add after 'actions/checkout@v4':"
echo "  - name: Sync navigation"
echo "    run: bash scripts/sync-nav.sh"
echo "  - name: Check navigation"
echo "    run: bash scripts/check-nav.sh"
