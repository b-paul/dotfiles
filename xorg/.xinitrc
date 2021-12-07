default=bspwm

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources && xrdb -merge -I$HOME ~/.config/themes/2

. ~/.xprofile

exec ${2:-$default}
