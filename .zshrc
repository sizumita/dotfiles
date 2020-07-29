#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# opam configuration
test -r /Users/sizumita/.opam/opam-init/init.zsh && . /Users/sizumita/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

 # Alias
alias ocaml="rlwrap ocaml"
alias py="python"
alias pip="python -m pip"
alias venv="source venv/bin/activate"
  
# My commands
FPATH=$HOME/zsh/fbin:$FPATH
autoload -Uz $(ls -1 "$HOME/zsh/fbin")


# Plugins

