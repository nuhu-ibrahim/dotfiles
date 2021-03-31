#!/bin/bash
SCRIPT_DIR=$(cd `dirname $0` && pwd)
DOTFILES_DIR="$HOME/.dotfiles"

# ------------------------------------------------------------------------------------------
# Link and Back up Helper
# ------------------------------------------------------------------------------------------

_link_and_backup() {
  DEFAULT_FILE="$HOME/$1"
  LINK_FILE="$SCRIPT_DIR/$1"

  if [[ ! -L "$DEFAULT_FILE" ]]; then
    mv "$DEFAULT_FILE" "$DEFAULT_FILE.backup"
  else
    LINKING_TO=$(readlink "$DEFAULT_FILE")

    if [[ "$LINKING_TO" == "$LINK_FILE" ]]; then
      echo "> Symlink for $DEFAULT_FILE already exists. Skipping!"
      return
    else
      mv "$DEFAULT_FILE" "$DEFAULT_FILE.backup"
    fi
  fi

  ln -s "$LINK_FILE" "$DEFAULT_FILE"
  echo "> Created symlink for $DEFAULT_FILE."
}


# ------------------------------------------------------------------------------------------
# Begin Script
# ------------------------------------------------------------------------------------------

echo "======================================================================="
echo "Beginning installation"
echo "======================================================================="
echo ""


#install zsh
source setups/install-zsh.sh

cd $HOME

# Move the dotfiles directory to the HOME path if necessary...
[[ ! -d $DOTFILES_DIR ]] && mv $SCRIPT_DIR $DOTFILES_DIR

_link_and_backup ".hushlogin"
_link_and_backup ".zshrc"
_link_and_backup ".screenrc"
_link_and_backup ".gitconfig"

cd DOTFILES_DIR

# Install apps and binaries with Brew
source setups/brew.sh

# Set npm permissions and install global binaries
source setups/npm.sh

# Configure MacOS defaults.
# You only want to run this once during setup. Additional runs may reset changes you make manually.
source setups/macos

# Clone all needed repos
source setups/clone-repos.sh

echo ""
echo "======================================================================="
echo "Installation complete"
echo "======================================================================="
