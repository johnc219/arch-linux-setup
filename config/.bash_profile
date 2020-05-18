#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Autostart sway on login in tty1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	XDG_SESSION_TYPE=wayland exec sway
fi

