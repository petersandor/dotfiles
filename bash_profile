#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#
# X autostart
#

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
