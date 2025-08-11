#!/usr/bin/env bash
set -euo pipefail
# shellcheck source=../utils.sh
source "$(dirname "$0")/../utils.sh"
trap 'log_err "scripts/macos/command_line_tools.sh failed on line $LINENO: \"$BASH_COMMAND\" (exit $?)"' ERR

clt_installed() {
  xcode-select -p >/dev/null 2>&1 && \
  pkgutil --pkg-info com.apple.pkg.CLTools_Executables >/dev/null 2>&1
}