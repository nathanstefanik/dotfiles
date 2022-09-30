[[ -f ~/.Xresources ]] && xrdb -merge -I $HOME ~/.Xresources
udiskie &
xrandr --output DP-2 --mode 2560x1440 --rate 170.00 --primary
feh --bg-fill ~/Pictures/Netherlandish\ Proverbs\ by\ Pieter\ Breugel\ the\ Elder.jpg ~/Pictures/The\ Tower\ of\ Babel\ by\ Peter\ Breugel\ the\ Elder.jpg
exec slstatus &
exec dwm
