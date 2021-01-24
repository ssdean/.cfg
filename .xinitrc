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

#echo "*************** item zero:  $0 **************"
#echo "*************** item one:   $1 **************"
#echo \n
#echo "*************** item two:   $2 **************"
#echo \n
#echo "*************** item three: $3 **************"
#echo "*************** item four:  $4 **************"

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


#exec gnome-session
#exec dwm
