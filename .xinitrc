#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi
# enable number pad
numlockx &
# restart urxvtd after user relogin
setxkbmap -option caps:escape
setxkbmap -option shift:both_capslock
systemctl --user restart urxvtd.service
# start i3wm
exec i3
