#          _
#         | |
#  _______| |__  _ __ ___
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__
# /___|___/_| |_|_|  \___|
#

# Add colour support and set prompt
autoload -U colors && colors
#PS1='%F{green}%n%f@%F{blue}%m%f %F{white}%B%~%b%f $ '
PS1='%F{yellow} > %f'

# History support
HISTSIZE=1000
SAVEHIST=$HISTSIZE
HISTFILE="$HOME/.cache/zsh/history"

# Tab completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle 'completion:complete:*' gain-privileges 1
setopt COMPLETE_ALIASES

# Key bindings
bindkey ';5D' backward-word
bindkey ';5C' forward-word

# Definitions
export EDITOR='nvim'
export TERM='st'

# Avoid programs freezing terminals
ttyctl -f

# Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=7'
ZSH_AUTOSUGGEST_STRATEGY='completion'

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias v=${EDITOR}
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gp='git push'
alias gs='git status'
alias tmux='tmux -2'
