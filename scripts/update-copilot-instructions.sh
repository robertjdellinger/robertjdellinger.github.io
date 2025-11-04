#!/bin/bash
# Update Copilot instructions with new conventions
# Creates backup before modifying

set -euo pipefail

INSTRUCTIONS=".github/copilot-instructions.md"
BACKUP="${INSTRUCTIONS}.bak"

if [ ! -f "$INSTRUCTIONS" ]; then
    echo "Error: Copilot instructions file not found at $INSTRUCTIONS"
    exit 1
fi

# Create backup
echo "Creating backup: $BACKUP"
cp "$INSTRUCTIONS" "$BACKUP"

# Update all references in a single sed command for efficiency
# 1. Outreach -> Public Engagement
# 2. /outreach/ -> /engagement/
# 3. .github/lychee-allowlist.txt -> .lycheeignore
echo "Updating references in $INSTRUCTIONS"

sed -i.tmp \
    -e 's/outreach, \/outreach\//engagement, \/engagement\//g' \
    -e 's/"Outreach"/"Public Engagement"/g' \
    -e 's/identifier: "outreach"/identifier: "engagement"/g' \
    -e 's/\.github\/lychee-allowlist\.txt/\.lycheeignore/g' \
    -e '/\.lycheeignore/a\	•	lychee.toml is the authoritative configuration for accepted status codes and excludes.' \
    "$INSTRUCTIONS" && rm -f "${INSTRUCTIONS}.tmp"

echo "Copilot instructions updated successfully"
echo "Backup saved to: $BACKUP"
