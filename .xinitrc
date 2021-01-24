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

if [ -e $2 ]; then
    echo "****** No desktop environment given ******"
else 
    case $2 in
        -gnome | --gnome)
            #sudo systemctl start gdm
            exec gnome-session
        ;;
        -dwm | --dwm)
            exec dwm
        ;;
    esac
fi
