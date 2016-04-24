#
# X autostart
#

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

#
# Load other dotfiles
#

for file in ~/.aliases ~/.functions; do
	[ -h "$file" ] && source "$file";
done;
unset file;
