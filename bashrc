#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias dc='docker-compose'

PS1='\e[0;31m[\u@\h \W]\$ \e[m'

# Add custom utility to path (created by johnc219)
export PATH=$PATH:$HOME/utility/

# Initialize rbenv
eval "$(rbenv init -)"

# Add gem bins to path
#if which ruby >/dev/null && which gem >/dev/null; then
#    PATH="$(ruby -e 'puts Gem.user_dir')/bin:$PATH"
#fi

# Run ssh-agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<~/.ssh-agent-thing)" > /dev/null
fi

