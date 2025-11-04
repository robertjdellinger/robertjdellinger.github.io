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

# Update references:
# 1. Outreach -> Public Engagement
# 2. /outreach/ -> /engagement/
# 3. .github/lychee-allowlist.txt -> .lycheeignore
# 4. Add note about lychee.toml

echo "Updating references in $INSTRUCTIONS"

# Use sed for replacements
sed -i 's/outreach, \/outreach\//engagement, \/engagement\//g' "$INSTRUCTIONS"
sed -i 's/"Outreach"/"Public Engagement"/g' "$INSTRUCTIONS"
sed -i 's/identifier: "outreach"/identifier: "engagement"/g' "$INSTRUCTIONS"
sed -i 's/\.github\/lychee-allowlist\.txt/\.lycheeignore/g' "$INSTRUCTIONS"

# Add note about lychee.toml after .lycheeignore references
sed -i '/\.lycheeignore/a\	•	lychee.toml is the authoritative configuration for accepted status codes and excludes.' "$INSTRUCTIONS"

echo "Copilot instructions updated successfully"
echo "Backup saved to: $BACKUP"
