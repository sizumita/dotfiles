#!/bin/bash


export DOTPATH=${PREFIX:-"$HOME/dotfiles"}

# install homebrew

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."

brew upgrade

# install git

which git >/dev/null 2>&1 || brew install git


# Clone dotfiles repo

if [ -d "$DOTPATH" ]; then
  cd "$DOTPATH" || exit 1
  git status >/dev/null 2>&1 || exit 1
  git pull
else
  git clone --recursive https://github.com/sizumita/dotfiles.git "$DOTPATH"
  cd "$DOTPATH" || exit 1
fi

export PASSWORD


