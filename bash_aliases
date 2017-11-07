# Aliases for frequently used commands

alias l='ls -alhtr'
alias c='clear'
alias ll='less'
alias v='vim'
alias e='exit'

# All the environment variables
export cb="/Users/mohankumar/codebase/yourPeople3"
export p="/var/www/yourpeople"

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
alias gg='git grep'
alias ggi='git grep -i'
alias gitclean='git remote prune origin; git pull origin master'
#alias g='grep -r'

#Tmux aliases
alias tsn='tmux new -s'
alias tsa='tmux attach -t'
alias tss='tmux switch -t'
alias tsl='tmux list-sessions'
alias tsd='tmux detach'
alias tsc='tmux new -s'

#Make a bel sound
alias bel="echo -en '\007'"
alias celery='python manage.py celeryd -B -Q celery,priority,eta'
alias swf='moto_server swf && supervisord -c eta/swf_workers.conf'
alias swfstop='supervisorctl -c eta/swf_workers.conf stop all'
alias swfres='supervisorctl -c eta/swf_workers.conf restart all'
alias swfstat='supervisorctl -c eta/swf_workers.conf status'

# Alias to django management commands
alias sdb='cd $cb; python manage.py syncdb'
alias dbsh='cd $cb; python manage.py dbshell'
alias dsh='cd $cb; python manage.py sh -u "mohan@zenefits.com" -r'
alias syn='cd $cb; python manage.py syntax'
alias fort='cd $cb; python manage.py lint'
alias makemig='python manage.py makemigrations'
alias mig='cd $cb; python manage.py migrateall -s'
alias sqlmig='cd $cb; python manage.py sqlmigrate'
alias req='sudo -E env CC=gcc C_INCLUDE_PATH=/usr/local/include LIBRARY_PATH=/usr/local/lib LDFLAGS="-L$(brew --prefix openssl)/lib" CFLAGS="-I$(brew --prefix openssl)/include" CPPFLAGS="-I$(brew --prefix openssl)/include" SWIG_FEATURES="-cpperraswarn -includeall -I$(brew --prefix openssl)/include" pip install -r requirements.txt'

# To adm
alias adbsh='workon yourpeople; cd $p; python manage.py dbshell'
alias adsh='workon yourpeople; cd $p; sudo -u deploy /usr/local/virtualenv/yourpeople/bin/python manage.py sh -u "mohan@zenefits.com"'

# Alias to client app and console app start.
alias clientapp='cd /Users/mohankumar/codebase/yourPeople3/client-app; yarn cache clean && bower cache clean && rm -rf node_modules bower_components dist tmp && yarn && bower install && ember build -w'
alias consoleapp='cd /Users/mohankumar/codebase/yourPeople3/console-app; yarn cache clean && bower cache clean && rm -rf node_modules bower_components dist tmp && yarn && bower install && ember build -w'
alias rcomplibclient='cd /Users/mohankumar/codebase/yourPeople3/client-app/node_modules/component-library; \rm -rf *; cd /Users/mohankumar/codebase/yourPeople3/client-app/; sudo yarn install; cd $cb'

# Alias to fast tests
alias createtestdb=' python manage.py createtestdb -y --settings=yourpeople.test_local_settings && python manage.py migrateall --settings=yourpeople.test_local_settings --skip-autodetect'
alias testr='python manage.py test --reusedb --settings=yourpeople.test_local_settings'
alias test='python manage.py test --settings=yourpeople.test_local_settings'
alias circle="ci/bin/trigger-build.py"

# To login to adm
alias adm='ssh -i /Users/mohankumar/.ssh/id_rsa_mohan_zenefits mohan@10.99.66.21'

alias pycclean='find . -iname '*.pyc' -exec rm -v {} \;'

alias gluetests='cd $cb/client-app; yarn run build_test_watch'

#Spoof
alias spoofssh='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias keycopy='pbcopy < ~/.ssh/id_rsa.pub'

alias dmysql='cd /usr/local/var/mysql'

alias vm='workon yp3_3'

# Alias to simulate virtualenv-wrapper for pyenv virtualenv
# alias workon='pyenv activate'
# alias deactivate='pyenv deactivate'
# alias mkvirtualenv='pyenv virtualenv'

alias mongostart='mongod --config /usr/local/etc/mongod.conf'

alias msql='/Users/mohankumar/codebase/zendb/zendb7 stop; mysql.server start;' 
alias zendb='mysql.server stop; /Users/mohankumar/codebase/zendb/zendb7 start;'
alias zendbstat='/Users/mohankumar/codebase/zendb/zendb7 status'


# http://stackoverflow.com/questions/7131670/make-bash-alias-that-takes-parameter
myrecursivegrep() { 
    grep -r $@ *
}
alias g=myrecursivegrep

# Alias for docker
alias d=docker
