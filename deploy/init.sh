#!/bin/bash

export DOTPATH=${PREFIX:-"$HOME/dotfiles"}

# install homebrew

#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install git

#brew install git

echo $DOTPATH
if [ -d "$DOTPATH" ]; then
  cd "$DOTPATH" || exit 1
  git status >/dev/null 2>&1 || exit 1
  git pull
else
  git clone --recursive https://github.com/sizumita/dotfiles.git "$DOTPATH"
  cd "$DOTPATH" || exit 1
fi

bash deploy/deploy.sh
