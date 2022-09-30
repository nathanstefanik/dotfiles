[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
udiskie &
xrandr --output DisplayPort-0 --mode 2560x1440 --rate 170.00 --primary
exec slstatus &
exec dwm
