# The following lines were added by compinstall
zstyle ':completion:*' completer  _complete _ignored _list 
zstyle ':completion:*' list-colors '$[(s.:.)LS_COLORS]'
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' max-errors 1 numeric
zstyle ':completion:*' prompt '`%e'\'' typos'
zstyle :compinstall filename '/home/alisdair/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zhistfile
HISTSIZE=2000
SAVEHIST=2000
setopt appendhistory autocd notify
setopt HIST_IGNORE_DUPS
bindkey -e
# End of lines configured by zsh-newuser-install
autoload colors
alias ls="ls -FG"
alias ll="ls -lhAFG"

if [[ $EUID == 0 ]] 
then
PROMPT=$'%{\e[1;31m%}%n@%m %{\e[1;34m%}%~ #%{\e[0m%} ' # user dir %
else
PROMPT=$'%{\e[1;32m%}%n%{\e[1;30m%}@%{\e[1;35m%}%m %{\e[1;34m%}%~ %#%{\e[0m%} ' # root dir #
fi
RPROMPT=$'%{\e[1;34m%} [%T]%{\e[0m%}' # right prompt with time

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

