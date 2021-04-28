# setup zsh

rm -rf -d "${HOME}/.zsh.d"

mkdir "${HOME}/.zsh.d"

cp -f zsh/.zshenv "${HOME}"

export ZDOTDIR="${HOME}/.zsh.d"

# install zprezto

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# set symbolic link

for f (${ZDOTDIR}/.zprezto/runcoms/z*) ln -s "$f" "${ZDOTDIR:-$HOME}/.${f:t}"

# copy files

cp -f zsh/.p10k.zsh ${ZDOTDIR}

cp -f zsh/.zpreztorc "${ZDOTDIR}/.zprezto/runcoms/zpreztorc"
cp -f zsh/.zshrc "${ZDOTDIR}/.zprezto/runcoms/zshrc"
