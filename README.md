<h1>
  <a href="https://github.com/the-ruby-group">
    <img src="https://static.the-ruby-group.com/img/rubyGroup.svg" alt="The Ruby Group Logo" width="48" height="48" style="vertical-align: middle;" />
  </a>
  &nbsp;@the-ruby-group/devbox-init
</h1>

Automates terminal and development environment setup with dotfiles, editor configs, and install scripts for new machines.

## Environment

1. [Command Line Tools](https://mac.install.guide/commandlinetools/)

Xcode Command Line Tools are tools for software developers that run on the command line, in the Terminal application.

```bash
xcode-select --install
```

2. [Homebrew](https://brew.sh/)

```bash
# Install Homebrew if its not alredy installed.
if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
```

3. [Oh-My-Zsh](https://ohmyz.sh/)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

4. [Starship](https://starship.rs/)

```bash
# Fira Code Nerd Font
# NOTE: Don't forget to set the font to be used in your terminal!
brew install --cask font-fira-code-nerd-font

# Starship
brew install starship

# In ~/.zshrc
eval "$(starship init zsh)"
```

```bash
# Github
# Github CLI & Git Large File Storage (LFS)
brew install gh git-lfs

# NOTE: There may be an extra little command to initialize git-lfs
git lfs install
```

```bash
brew install nvim nvm zoxide zsh-syntax-highlighting zsh-autosuggestions
```

## IDEs

1. Visual Studio Code

Install from https://code.visualstudio.com/download

Visual Studio Code is a source code editor developed by Microsoft for Windows, Linux, and macOS. It includes support for debugging, embedded Git control, syntax highlighting, intelligent code completion, snippets, and code refactoring.

2. Antigravity

Install from https://antigravity.google/download

Antigravity is a powerful agentic AI coding assistant designed by the Google Deepmind team, built for advanced agentic coding and pair programming.

3. Cursor

Install from https://cursor.com/download

Cursor is an AI-powered code editor built on top of VS Code, designed to help developers write, debug, and optimize code with integrated AI features.

## Bun

```bash
brew install oven-sh/bun/bun

# NOTE: After installing bun, you can enable bun tab-completions with
bun completions
```

## Solana

```bash
# Rust programming language
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Solana CLI from Anza
sh -c "$(curl -sSfL https://release.anza.xyz/stable/install)"

# Create rustup completions in the expected location
mkdir -p ~/.zfunc
rustup completions zsh > ~/.zfunc/_rustup
mkdir -p ~/.solana
solana completion > ~/.solana/completions.sh
```

## Claude Code

Claude Code is an agentic CLI that allows Claude to interact directly with your local development environment.

```bash
brew install --cask claude-code

# Authenticate with your Anthropic account
claude

# Run a system health check
claude doctor
```

## Rectangle App

Move and resize windows in macOS using keyboard shortcuts or snap areas: https://rectangleapp.com/

## Future

- Flutter / Dart?
