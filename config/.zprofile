# Homebrew
eval "$(/usr/local/bin/brew shellenv)"

# Greeting
print -P "%F{green}%B"; cat $HOME/.config/alien-greeting.txt; print -P "%b%f"