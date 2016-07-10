#
# X autostart
#

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

#
# Load other dotfiles
#

for file in ~/.aliases ~/.functions ~/.exports ~/.bash_prompt; do
	[ -h "$file" ] && source "$file";
done;
unset file;

#
# History
#

shopt -s histappend                        # append history entries

# npm location

NPM_PACKAGES="${HOME}/.local/share/npm"
export PATH="$NPM_PACKAGES/bin:$PATH"
unset NPM_PACKAGES

