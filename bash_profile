#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#
# Include aliases file
#

source aliases

#
# X autostart
#

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
