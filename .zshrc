# ----------------------------------------------------------------------------------------
# @author  Nuhu Ibrahim <contactnuhuibrahim@gmail.com>
# @package .dotfiles
# ----------------------------------------------------------------------------------------

# -- Default user
DEFAULT_USER=nuhuibrahim

# ----------------------------------------------------------------------------------------
# ZSH Configuration
# ----------------------------------------------------------------------------------------

# -- Path
export ZSH="$HOME/.oh-my-zsh"

# -- Theme
ZSH_THEME="robbyrussell"

# -- Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)


# ----------------------------------------------------------------------------------------
# Load ZSH
# ----------------------------------------------------------------------------------------

# -- Aliases
[ -f "$HOME/.dotfiles/.zsh_aliases.sh" ] && \. "$HOME/.dotfiles/.zsh_aliases.sh"

# ----------------------------------------------------------------------------------------
# EXPORTS
# ----------------------------------------------------------------------------------------

# Link Homebrew casks in `/Applications` rather than `~/Applications`
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/etc/Caskroom"

# -- Node version manager
export NVM_DIR="$HOME/.nvm"

source $ZSH/oh-my-zsh.sh

# # -- Default Editor
# if [[ ! -n $SSH_CONNECTION ]]; then
#     export EDITOR="code -w"
# fi

# -- Development Packages Flags
# export XDEBUG_CONFIG="idekey=VSCODE"
# export PHP_CS_FIXER_IGNORE_ENV=1
# export THEOS_DEVICE_IP="Replace with device IP if needed"

# export HOMEBREW_GITHUB_API_TOKEN="STORE THIS IN .zsh_private.sh"

# -- Homebrew
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

# -- Composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# -- Ruby Version Manager
# export PATH="$HOME/.rvm/bin:$PATH"

# -- Custom Exports
# [ -f "$HOME/.dotfiles/.zsh_exports.sh" ] && \. "$HOME/.dotfiles/.zsh_exports.sh"

# -- Flutter (Move to ~/.dotfiles/.zsh_exports.sh)
# export PATH="$HOME/flutter/bin:$PATH"

# -- Android (Move to ~/.dotfiles/.zsh_exports.sh)
# export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"

# -- Golang (Move to ~/.dotfiles/.zsh_exports.sh)
# export GOBIN="$GOPATH/bin"
# export GOPATH="$HOME/Dev/Personal/Golang"
# export PATH="$PATH:$GOBIN"

# -- Theos (Move to ~/.dotfiles/.zsh_exports.sh)
# export THEOS="$HOME/theos"
alias ls="ls -lah"

# -- !! LEAVE AS LAST
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# ----------------------------------------------------------------------------------------
# LOAD PACKAGES
# ----------------------------------------------------------------------------------------

# -- Node Version Manager
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# -- Ruby
# [[ -f "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# [ -x "$(command -v rbenv)" ] && eval "$(rbenv init -)"source /Users/nuhuibrahim/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/nuhuibrahim/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
