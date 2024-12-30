#!/bin/bash

if ! command -v stow 2>&1 >/dev/null; then
  echo "Gnu stow could not be found"
  exit 1
fi

STOW_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "Stow directory: $STOW_DIR"

for file in "$STOW_DIR"/*; do
  if [ -d "$file" ]; then
    package=$(basename "$file")
    echo "Stowing package: $package"
    stow -d "$STOW_DIR" -t "$HOME" "$package"
  fi
done
