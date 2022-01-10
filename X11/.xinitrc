[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
udiskie &
xrandr --output DisplayPort-0 --mode 2560x1440 --rate 170.00 --primary
xrandr --output HDMI-A-0 --mode 2560x1440 --rate 75.00 --rotate left --pos 2560x-755
feh --bg-fill ~/Pictures/The\ Tower\ of\ Babel\ by\ Peter\ Breugel\ the\ Elder.jpg
exec slstatus &
exec dwm
