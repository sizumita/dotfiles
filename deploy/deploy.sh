# install homebrew

bash homebrew/install.sh

# install zprezto

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# update zpreztorc

cp -f .zpreztorc $HOME/.zprezto/runcoms/zpreztorc

# add .p10k.zsh

cp -f .p10k.zsh $HOME/.p10k.zsh
