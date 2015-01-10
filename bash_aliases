# Aliases for frequently used commands

alias l='ls -alhtr'
alias c='clear'
alias ll='less'
alias v='vim'
alias e='exit'

# All the environment variables
export cb="/Users/mohankumar/codebase/yourPeople2"

# Alias to all the github things
alias gbn='git checkout -b'
alias gco='git checkout'
alias gbd='git branch -d'
alias gb='git branch'
alias gba='git branch -a'
alias gbp='git push origin'
alias gp='git pull'
alias gc='git commit'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gre='git rebase -i master'
alias rmerge="git branch --merged master | grep -v '^..master$' | xargs git branch  -d"

#Tmux aliases
alias tsn='tmux new -s'
alias tsa='tmux attach -t'
alias tss='tmux switch -t'
alias tsl='tmux list-sessions'
alias tsd='tmux detach'
alias tsc='tmux new -s'

#Make a bel sound
alias bel="echo -en '\007'"

# Alias to django management commands
alias sdb='cd $cb; python manage.py syncdb'
alias dbsh='cd $cb; python manage.py dbshell'
alias dsh='cd $cb; python manage.py sh'
alias syn='cd $cb; python manage.py syntax'
alias makemig='cd $cb; python manage.py makemigrations'
alias mig='cd $cb; python manage.py migrate'
alias sqlmig='cd $cb; python manage.py sqlmigrate'
