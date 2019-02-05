SOURCE=${(%):-%N}
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
export DOTFILES_DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

PROMPT='
%m: %F{154}%~%f
%F{bold}%F{cyan}$%f '

# The following lines were added by compinstall
zstyle :compinstall filename '/Users/chrisbaker/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install


export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# Aliases
if (( $+commands[tmux] )); then
  alias tmux='tmux -f ~/.dotfiles/tmux.conf'
fi

if (( $+commands[nvim] )); then
  alias vim="nvim"
  export EDITOR="nvim"
else
  export EDITOR="vim"
fi

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -a'
