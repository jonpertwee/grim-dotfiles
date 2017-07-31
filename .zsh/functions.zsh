## Functions
# ZSH Functions {{{

# Check to make sure the cache exists
if [ ! -d $CACHEDIR ]; then
    mkdir -p $CACHEDIR
fi

# Draw the mode indicator for Vi mode in prompt
VIMODE=''
function zle-keymap-select {
    VIMODE="${${KEYMAP/vicmd/[C]}/(main|viins)/}"
    zle reset-prompt
}
zle -N zle-keymap-select

# Expand "ealiases" to show full comand on space
typeset -a ealiases
ealiases=()

function ealias()
{
alias $1
ealiases+=(${1%%\=*})
}

function expand-ealias()
{
if [[ $LBUFFER =~ "(^|[;|&])\s*(${(j:|:)ealiases})\$" ]]; then
    zle _expand_alias
    zle expand-word
fi
zle magic-space
}

zle -N expand-ealias

bindkey -M viins ' '    expand-ealias
bindkey -M viins '^ '   magic-space     # control-space to bypass completion
bindkey -M isearch " "  magic-space # normal space during searches

# SSH Test
function ssh_connection() {
  if [[ -n $SSH_CONNECTION ]]; then
    echo "[%{$fg[red]%}@%m]"
  fi
}

# Background Job Count
function bg_jobs() {
    local bg_status="%{$fg_bold[yellow]%}%(1j.↓%j .)"
    echo $bg_status
}

# }}}
# Terminal Functions {{{

# Write term title for (u)rxvt & xterm
case $TERM in
    (*xterm* | *rxvt*)
    function precmd {
        print -Pn "\e]0;zsh%L %(1j,%j job%(2j|s|); ,)%~\a"
    }
    function preexec {
        printf "\033]0;%s\a" "$1"
    }
esac

# Get block cursor in console
if [ "$TERM" = "xterm" ]; then
    echo -e "\e[?112c"
elif [ "$TERM" = "linux" ]; then
    echo -e "\e[?112c"
else
fi

# }}}
# External Functions {{{

# Reset Huion kernel driver
reinsHuion() {
    sudo rmmod hid-huion
    sudo insmod /lib/modules/$(uname -r)/kernel/drivers/hid/hid-huion.ko.gz
}

# Set custom monitor brightness
monBri() {
    sudo sh -c "echo $1 > /sys/class/backlight/intel_backlight/brightness"
}

#start another xsession
xTest() {
    xinit /usr/bin/$1 -- :$XDG_VTNR -nolisten tcp vt$XDG_VTNR
}

tabset() {
    tabletID=`xinput list | grep -e "PenTablet Pen" | sed -e 's/[^0-9.]*id\=//g' | cut -b 1-2`
    #echo "$tabletID"
    xinput map-to-output "$tabletID" eDP1
}

# }}}
# vim:foldmethod=marker:foldlevel=0
