#!/bin/bash

# Change this value your custom location
CLONE_PATH='code'

function clone () {
	# CD to folder where git repos are kept
    mkdir $HOME/$CLONE_PATH
	cd $HOME/$CLONE_PATH

  echo "Cloning repositories"
  git clone https://github.com/nuhu-ibrahim/personal-website.git nuhu-ibrahim
  echo "Finished cloning repositories"
}

clone
unset clone