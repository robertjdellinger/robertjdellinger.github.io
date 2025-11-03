#!/usr/bin/env bash
set -euo pipefail
# Warn if files under content were renamed without aliases in the new file
BASE="${GITHUB_BASE_REF:-origin/main}"
git fetch --depth=100 origin "+refs/heads/*:refs/remotes/origin/*" >/dev/null 2>&1 || true
renames=$(git diff --name-status "$BASE"...HEAD | awk '$1 ~ /^R/ {print $2"->"$3}')
if [[ -z "${renames}" ]]; then
  echo "No renames detected."
  exit 0
fi
status=0
while IFS= read -r r; do
  old="${r%%->*}"
  new="${r##*->}"
  [[ "$new" != content/* ]] && continue
  [[ "$new" != *.md && "$new" != *.html ]] && continue
  if ! grep -q '^aliases:' "$new"; then
    echo "::warning title=Alias recommended for renamed page:: $old -> $new"
    echo "Add an aliases entry in the new file front matter to cover the old URL."
    status=0
  fi
done <<< "$renames"
exit $status
