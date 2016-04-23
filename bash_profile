#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#
# Include aliases file
#

[[ -f ~/.aliases ]] && source ~/.aliases

#
# X autostart
#

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
