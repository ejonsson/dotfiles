
if [[ $- != *i* ]] || [ -z "$PS1" ]; then
  return 0
fi

HISTSIZE=2000
HISTFILESIZE=2000

# Append to the Bash history file, rather than overwriting it
shopt -s histappend
shopt -s checkwinsize


export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh


alias grep='grep --color=auto'
alias ducks='du -cks * | sort -rn | head'
alias psl='ps axuf | less -s'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


PS1='\[\033[01;31m\]\u\[\033[01;33m\]@\[\033[01;36m\]\h \[\033[01;33m\]\w\[\033[01;35m\]\$ \[\033[00m\]'
# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac


if [[ $(uname -s) == Darwin ]]
then
    # Fix terrible looking fonts in windows / wine apps
    # caused by FreeType 2.7.5 / XQuartz
    export FREETYPE_PROPERTIES="truetype:interpreter-version=35"
    launchctl setenv FREETYPE_PROPERTIES $FREETYPE_PROPERTIES
    alias listports='lsof -i -n -P | grep TCP'
    alias ls='ls -G'
    # HomeBrew Findutils
    PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
    export PATH=$PATH:/usr/local/sbin
    export PATH=$PATH:/usr/local/mysql/bin
else
    export PATH=$PATH:/usr/games
    alias ls='ls --color=auto'
fi


fortune | cowsay | lolcat
echo


if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

