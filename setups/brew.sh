install#!/usr/bin/env bash

# Install Homebrew (if not installed)
echo "Installing Homebrew."

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed` as gsed
brew install gnu-sed

# Install `wget` with IRI support.
brew install wget --with-iri

brew install gmp
brew install grep
brew install node

# Install useful binaries.
brew install ack
brew install autojump
brew install ffmpeg
brew install git
brew install git-lfs
brew install github/gh/gh
brew install imagemagick --with-webp
brew install p7zip
brew install pigz
brew install pv
brew install rsync
brew install rename
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install youtube-dl
brew install yarn
brew install nginx
brew install meilisearch
brew install trash

# Installs Casks
brew tap caskroom/cask

# PHP Env
brew install php
brew install php@8.1
brew install php@7.4
brew install composer

#DBs
brew install mysql
brew install redis

# Java env
brew install --cask docker
brew install --cask virtualbox
brew install --cask java
brew install kubectl
brew install minikube

## Apps I use
brew install --cask google-chrome #Chrome
brew install --cask grammarly
brew install --cask iterm2
brew install --cask vlc
brew install --cask github
brew install --cask whatsapp
brew install --cask zoom
brew install --cask alfred
brew install --cask sublime-text
brew install --cask intellij-idea
brew install --cask microsoft-teams
brew install --cask sequel-ace

# Remove outdated versions from the cellar.
brew cleanup