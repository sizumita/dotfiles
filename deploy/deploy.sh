# install homebrew

bash homebrew/install.sh

# setup zsh

cp -f zsh/.zsh.d zsh/.zshenv $HOME

# install zprezto

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zsh.d/.zprezto"

zsh

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

zsh
