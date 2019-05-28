SOURCE=${(%):-%N}
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
export DOTFILES_DIR="$( cd -P "$( dirname "$SOURCE" )/.." && pwd )"
export PATH=~/.local/bin:$PATH

PROMPT='
%m: %F{154}%~%f
%F{bold}%F{cyan}$%f '

# Aliases
if (( $+commands[tmux] )); then
  alias tmux="tmux -f $DOTFILES_DIR/tmux.conf"
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
alias less='less -r'

# fortune!
if (( $+commands[fortune] && $+commands[cowthink] )); then
  fortune | cowthink -f stegosaurus -W 60
fi

# The following lines were added by compinstall 
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install

# NVM
export NVM_DIR="$XDG_DATA_HOME/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

# Machine-local settings
if [[ -a $ZDOTDIR/.zshrc.local ]]; then
  source $ZDOTDIR/.zshrc.local
fi
