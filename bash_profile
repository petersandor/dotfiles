#
# X autostart
#

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

#
# Load other dotfiles
#

for file in ~/.aliases ~/.functions ~/.exports; do
	[ -h "$file" ] && source "$file";
done;
unset file;

# npm location

NPM_PACKAGES="${HOME}/.local/share/npm"
export PATH="$NPM_PACKAGES/bin:$PATH"
unset NPM_PACKAGES

###-begin-yo-completion-###
if type complete &>/dev/null; then
  _yo_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           yo-complete completion -- "${words[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _yo_completion yo
fi
###-end-yo-completion-###
