#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# bash completion
[[ -r /usr/share/bash-completion/bash_completion ]] && 
  source /usr/share/bash-completion/bash_completion

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# config aliases
alias reload='clear; source ~/.bashrc'
alias hyprconf='nvim ~/.config/hypr'
alias bashconf='nvim ~/.bashrc'
alias kittyconf='nvim ~/.config/kitty/kitty.conf'
alias ffconf='nvim ~/.config/fastfetch/config.jsonc'
alias neoconf='nvim ~/.config/nvim'

# other aliases
alias ff='clear; fastfetch'
alias conf='cat ~/.config/.conf.txt'
alias ct='nohup kitty &>/dev/null &'
alias :q='exit'
alias :wq='mkwp; exit'
alias purge='sudo pacman -Rns $(pacman -Qdtq)'

# waypointing
alias mkwp='pwd > ~/.waypoint'
alias cdwp='cd $(cat ~/.waypoint)'

# progtest
alias pt++='g++ --std=c++20 -Wall -pedantic -Wextra -Wunused -Wshadow -Wextra -Wno-long-long -Wconversion -O2'
alias crformat='clang-format --style=Google -i'

# fancy shutdown
alias sdn='/home/xerho/scripts/random_quote.pl /home/xerho/scripts/quotes.json titanfall; sleep 1; shutdown now'
alias rbt='/home/xerho/scripts/random_quote.pl /home/xerho/scripts/quotes.json titanfall; sleep 1; reboot'

# fastfetch :)
fastfetch --logo-type none
