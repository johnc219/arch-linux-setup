#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -A --color=auto'
alias dc='docker-compose'

PS1='\[\e[0;35m\][\W]> \[\e[m\]'

# Run Firefox in wayland
export MOZ_ENABLE_WAYLAND=1

export XDG_CONFIG_HOME=$HOME/.config

eval "$(rbenv init -)"

# Run ssh-agent
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent` > /dev/null
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock

# Add ssh credentials
ssh-add -l > /dev/null || ssh-add

