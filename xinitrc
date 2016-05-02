# merge xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# set wallpaper
feh --bg-scale ~/Pictures/Wallpapers/current.jpg

# start i3wm
exec i3
