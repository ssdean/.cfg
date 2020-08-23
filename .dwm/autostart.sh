#! /bin/bash

feh --bg-scale /home/steven/Pictures/Wallpapers/beiheng-guo-IAVVv6z3D6g-unsplash.jpg &
picom &

datetime() {
        echo $(date +"%a %d %h %I:%M%p") 
}

battery() {
        bat=$(cat /sys/class/power_supply/BAT0/capacity | awk '{print $1"\%"}')
        echo $bat
}

while true; do
        xsetroot -name "$(datetime) $(battery)"
        sleep 30s
done

exit 0
