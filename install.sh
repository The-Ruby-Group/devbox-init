#!/usr/bin/env bash
set -euo pipefail

# Trap errors and print a helpful message before exiting
trap 'log_err "install.sh failed on line $LINENO: \"$BASH_COMMAND\" (exit $?)"' ERR

# Load common utils functions
source "$(dirname "$0")/scripts/utils.sh"

main() {
  os=$(detect_os)
  log_info "Detected OS: $os"

  case "$os" in
    macos)
      log_info "Running macOS setup..."
      ./scripts/macos.sh
      ;;
    *)
      log_err "Unsupported OS: $os. Exiting."
      exit 1
      ;;
  esac
}

main "$@"