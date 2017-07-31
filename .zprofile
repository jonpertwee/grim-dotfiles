[[ -z $DISPLAY && $XDG_VTNR -eq 1 && -z $TMUX ]] && startx
[[ -z $DISPLAY && $XDG_VTNR -eq 1 && -z $TMUX ]] && setleds -D +num
export QT_QPA_PLATFORMTHEME="qt5ct"
