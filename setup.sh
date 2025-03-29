#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

run_with_execute_permission() {
  local script_path="$1"

  if [ ! -f "$script_path" ]; then
    echo "Error: File '$script_path' does not exist."
    return 1
  fi

  if [ ! -x "$script_path" ]; then
    echo "Adding execute permission to '$script_path'."
    chmod +x "$script_path"
  fi

  echo "Executing '$script_path'."
  "$script_path"
}

STOW_CONFIG_FILES="$DOTFILES_DIR"/stow/stow.sh
run_with_execute_permission "$STOW_CONFIG_FILES"
