#!/bin/bash

# Change this value your custom location
CLONE_PATH='code'

function clone () {
	# CD to folder where git repos are kept
	cd $HOME/$CLONE_PATH

  echo "Cloning repositories"
  git clone https://github.com/veekthoven/my-wedding-website.git dorcas
  git clone https://github.com/veekthoven/lightwk.git
  git clone https://github.com/veekthoven/veekthoven.git
  git clone https://github.com/veekthoven/sermons.ng.git sermons
  git clone https://github.com/veekthoven/LitFlo-frontend.git litflo-frontend
  git clone https://github.com/veekthoven/LitFlo-backend.git litflo-backend
  git clone https://github.com/The-Lesson-Builder-LLC/myworksheetmaker.git ws
  echo "Finished cloning repositories"
}

clone
unset clone