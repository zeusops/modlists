#!/bin/bash

set -euo pipefail

# Example: ./m lyth vinj mull >> main.txt
if [ $# -lt 1 ]; then
  echo "Usage: $(basename $0) TERRAIN [TERRAIN..]"
  exit 1
fi

for x in "$@"; do
  if ! grep "$x" allmods.txt; then
    echo "$x not found!" 1>&2
  fi
done
