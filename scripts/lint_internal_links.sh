#!/usr/bin/env bash
set -euo pipefail
# Find markdown links that look internal and are not images and not using Hugo relref or ref
hits=$(git grep -nE '\[[^]]+\]\((/|\.{1,2}/)[^)]+\)' -- 'content/**/*.md' | grep -v '!\[' || true)
if [[ -n "$hits" ]]; then
  echo "::warning title=Use relref or ref for internal links::"
  echo "$hits"
  echo
  echo "Suggestion, replace [Title](/path/) with {{< relref \"/path/\" >}} or {{< ref >}}."
else
  echo "No raw internal markdown links found."
fi
