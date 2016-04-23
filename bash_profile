#
# X autostart
#

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

#
# Load other dotfiles (aliases only for now)
#

for file in ~/.aliases; do
	[ -h "$file" ] && source "$file";
done;
unset file;
