#!/usr/bin/env bash
set -euo pipefail

# Detect the current OS: macos, linux, windows, or unknown
detect_os() {
  local uname_out
  uname_out="$(uname -s)"

  case "${uname_out}" in
      Darwin*)  os="macos" ;;
      Linux*)   os="linux" ;;
      CYGWIN*|MINGW*|MSYS*) os="windows" ;;
      *)        os="unknown" ;;
  esac

  echo "$os"
}

# Simple logging helpers
log_info()  { printf "%s\n" "$*"; }
log_ok()   { printf "✅ %s\n" "$*"; }
log_warn() { printf "⚠️  %s\n" "$*" >&2; }
log_err()  { printf "❌ %s\n" "$*" >&2; }