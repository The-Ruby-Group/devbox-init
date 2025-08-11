#!/usr/bin/env bash
set -euo pipefail
trap 'log_err "scripts/macos.sh failed on line $LINENO: \"$BASH_COMMAND\" (exit $?)"' ERR

# Load common utils functions
source "$(dirname "$0")/utils.sh"

require_macos() {
  if [[ "$(detect_os)" != "macos" ]]; then
    log_info "This script is for macOS only." >&2
    exit 1
  fi
}


main() {
  require_macos

  # 1) Xcode Command Line Tools (headless)
  "$(dirname "$0")/macos/command_line_tools.sh"

  # Next steps (when ready):
  # "$(dirname "$0")/macos/homebrew.sh"
  # "$(dirname "$0")/macos/oh_my_zsh.sh"
  # "$(dirname "$0")/macos/starship.sh"   # optional prompt with yes/no

}

main "$@"