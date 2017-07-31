## Aliases + Shortcuts
# Shortcuts {{{

alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../../'
alias bk='cd $OLDPWD'
alias ls='ls -F --color=auto --human-readable --group-directories-first --classify'
alias la='ls -Fah --color=auto --human-readable --group-directories-first --classify'
alias ll='ls -lFah --color=auto --human-readable --group-directories-first --classify'
alias sl='ls -F --color=auto --human-readable --group-directories-first --classify'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias vgrep='grep --color=auto  -v'
alias less='less -R'
alias df='df -h'
alias cl='clear'
alias src='source $HOME/.zshrc'
alias brion='sudo sh -c "echo 1054 > /sys/class/backlight/intel_backlight/brightness"'
alias brioff='sudo sh -c "echo 1 > /sys/class/backlight/intel_backlight/brightness"'
alias brimid='sudo sh -c "echo 527 > /sys/class/backlight/intel_backlight/brightness"'
alias markall='cat *.mkd | markdown | xclip; xclip -o >'
alias rm='echo "Disabled for reasons. Use trash-put (tp) instead."; false'
alias xrdbl='xrdb -load ~/.Xresources'
alias xev="xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"
alias cuebreak='cuebreakpoints *.cue | shnsplit -o flac *.flac ;'
alias cuelabel='cuetag.sh *.cue split-track*.flac ;'
alias flacape='shntool conv -o flac *.ape'

# }}}
# Programs {{{

ealias tp='trash-put'
ealias rjr='ranger'
ealias feh='feh -d -S filename -rx.'
ealias vi='vim'
ealias svi='sudo -e'
ealias ping='ping -c 5'
ealias deluge='transmission-remote-cli'
ealias battime='watch -t -n 2 -c "acpi -bt"'
ealias mupdf='mupdf -W 960 -H 1056 -S 22 -r 72'
ealias xrst='xrestrict -i'
ealias nfetch='neofetch --image off'
ealias pts='phoronix-test-suite'

# }}}
# ConnMan {{{

alias reconn='sudo systemctl restart connman.service'
alias wifion='connmanctl enable wifi'
alias wifioff='connmanctl disable wifi'

# }}}
# Manage Bootloader {{{

ealias sysconf='sudo -e /boot/syslinux/syslinux.cfg'
ealias grubconf='sudo -e /etc/default/grub'
ealias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

# }}}
# Pacaur {{{

ealias pac='pacaur'
ealias pacin='pacaur -S --needed'
ealias pacrem='pacaur -Rcns'
ealias pacremdep='pacaur -Rncs $(pacman -Qdtq)'
ealias pacclr='pacaur -Scc'
ealias pacser='pacaur -Ss'
ealias pacrep='pacaur -Ssi'
ealias pacupd='pacaur -Syy'
ealias pacupg='pacaur -Syu --devel --needed'
ealias pacgrep='pacaur -Qq | grep'
ealias pacsui='pacaur -Syu --devel --needed --noconfirm --noedit'
ealias pacconf='sudo -e /etc/pacman.conf'

# }}}
# MPD/MPC {{{

ealias next='mpc next'
ealias prev='mpc prev'
ealias stop='mpc stop'
ealias play='mpc play'
ealias pause='mpc pause'

# }}}
# vim:foldmethod=marker:foldlevel=0
