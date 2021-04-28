#!/bin/zsh

export DOTPATH=${PREFIX:-"$HOME/dotfiles"}

# install homebrew

if ! (( $+commands[brew] )); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "homebrew is available, update homebrew"
  brew update
fi

# install git

if ! (( $+commands[git] )); then
  brew install git
else
  echo "git is available"
fi

# clone dotfiles

echo $DOTPATH
if [ -d "$DOTPATH" ]; then
  cd "$DOTPATH" || exit 1
  git status >/dev/null 2>&1 || exit 1
  git pull
else
  git clone --recursive https://github.com/sizumita/dotfiles.git "$DOTPATH"
  cd "$DOTPATH" || exit 1
fi

zsh deploy/deploy.zsh
