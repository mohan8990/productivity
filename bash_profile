
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
PS1="\`if [ \$? = 0 ]; then echo \[\e[33m\]^_^\[\e[0m\]; else echo \[\e[31m\]O_O\[\e[0m\]; fi\`[\u@\h:\w]\\$ "

source ~/.bash_aliases
export PATH=/usr/local/sbin:$PATH
# export PYENV_ROOT=/usr/local/var/pyenv # Needed for proper working of pyenv. Get this by `brew info pyenv`

test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash

source /usr/local/bin/virtualenvwrapper.sh
# if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi # Needed for proper working of pyenv. Get this by `brew info pyenv`
export CRYPTOGRAPHY_ALLOW_OPENSSL_098=1
alias zendb7='/Users/mohankumar/codebase/zendb/zendb7'
alias zendb7='/Users/mohankumar/codebase/zendb/zendb7'
alias zendb7='/Users/mohankumar/codebase/zendb/zendb7'
export PATH=$PATH:~/bin

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# added by Anaconda2 4.3.1 installer
# export PATH="/Users/mohankumar/anaconda/bin:$PATH"
# From local_setup guide
export MAGICK_HOME=/usr/local/opt/imagemagick@6

# Because I renamed my ssh file, I have to do this.
ssh-add ~/.ssh/id_rsa &>/dev/null

export PATH="$HOME/.yarn/bin:$PATH"
