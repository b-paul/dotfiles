source ./.zprofile

# Add colour support and set prompt
autoload -U colors && colors
#PS1="%F{green}%n%f@%F{blue}%m%f %F{white}%B%~%b%f $ "
PS1=" %F{yellow}>%f "
RPS1=""

# Set default editor to neovim
EDITOR="nvim"
VISUAL=$EDITOR
GIT_EDITOR=$EDITOR

XDG_CONFIG_HOME="$HOME/.config"

# pfetch settings
export PF_INFO="ascii title os host kernel uptime memory wm shell editor palette"

# Set default terminal emulator
TERMINAL="urxvt"

# Add all scripts to the path

# History support
HISTSIZE=1000
SAVEHIST=$HISTSIZE
#HISTFILE="$HOME/.config/zsh_history"

# Tab completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle 'completion:complete:*' gain-privileges 1
setopt COMPLETE_ALIASES

setopt +o nomatch

# Enable command correction
#setopt correctall

# Key bindings
bindkey '[1;5D' backward-word
bindkey '[1;5C' forward-word
bindkey '^\b'  backward-delete-word
bindkey '[P' delete-char
bindkey -s '[2K' ""
bindkey -s '\e' ""

# Avoid programs freezing terminals etc
ttyctl -f

# Aliases
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gs='git status'
alias ls='ls --color=auto'
alias la='ls -la'
alias ssh='TERM=xterm-256color ssh'

alias v=$EDITOR

alias bat="cat /sys/class/power_supply/BAT0/capacity"
