# Homebrew
# Try to find brew in PATH first, otherwise check common locations
BREW_PATH=$(command -v brew 2>/dev/null)
if [[ -z "$BREW_PATH" ]]; then
  # Check common Homebrew installation locations
  if [[ -f "/opt/homebrew/bin/brew" ]]; then
    BREW_PATH="/opt/homebrew/bin/brew"
  elif [[ -f "/usr/local/bin/brew" ]]; then
    BREW_PATH="/usr/local/bin/brew"
  fi
fi
if [[ -n "$BREW_PATH" ]]; then
  eval "$($BREW_PATH shellenv)"
fi

# Add ~/.zfunc to fpath for automatic completion loading
mkdir -p ~/.zfunc
fpath=(~/.zfunc $fpath)

# Greeting
print -P "%F{green}%B"; cat $HOME/.config/alien-greeting.txt; print -P "%b%f"