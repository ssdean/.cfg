#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#
# Usage: startx -[desktop environment]

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

case $2 in
    -gnome | --gnome)
        #sudo systemctl start gdm
        exec gnome-session
    ;;
    -dwm | --dwm)
        exec dwm
    ;;
    -plasma | --plasma)
        exec startplasma-x11
    ;;
    -xfce | --xfce)
        exec startxfce4
    ;;
    -i3 | --i3)
        exec i3
    ;;
    -mate | --mate)
        exec mate-session
    ;;
esac
