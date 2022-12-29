#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# EXPORT
export TERM="alacritty"
export EDITOR="nvim"
export MANPAGER="nvim -c 'set ft=man'"

# VI MODE
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'




# ALIAS
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='la -lh'
alias bat='cat /sys/class/power_supply/BAT0/capacity'
alias grep='grep --color=auto'
alias df='df -h'
alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages
alias ..='cd ..'
alias nm='sudo systemctl start NetworkManager'
alias batStatus='cat /sys/class/power_supply/BAT0/status' # check if connected to power correctly
alias feh='feh -F'
alias n='nvim'
alias update='sudo pacman -Syu && paru -Syu'
alias za='zaread'
alias awesomeRestart="echo 'awesome.restart()' | awesome-client"


alias criderlab='ssh -t -Y -X -L5926:localhost:5926 mw2680@criderlab-001.ph.msstate.edu'


#PS1='[\u@\h \W]\$ '


pfetch
eval "$(starship init bash)"



# Fun stuff
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

