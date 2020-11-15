DEFAULT_THEME="dark"
DEFAULT_WM=bspwm

theme=$DEFAULT_THEME
wm=${DEFAULT_WM}

[[ -z $2 ]] || theme=$2
[[ -z $3 ]] || wm=$3

. ~/.xprofile $theme $wm

case $wm in
    i3|i3wm         ) exec i3;;
    dwm             ) exec dwm;;
    bspwm           ) exec bspwm;;
    *               ) exec $DEFAULT_WM;;
esac

exec export THEME=""
