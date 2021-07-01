############################: .BASHRC :########################################

############################: ALIAS :##########################################

# print screen


#live server

alias live-server="live-server --browser=chromium --port=8081"

# irssi

alias irssi="torsocks irssi"
# su

alias su="su -"

# ssh

alias sshWindows="ssh fulaninho@192.168.100.170"

alias sshKali="ssh casimir@192.168.100.182"
alias sshCam="ssh pedro@192.168.0.108"
alias sshCamFs="sshfs pedro@192.168.0.108:/home/pedro/record/ /home/casimir/sshCam/"
alias sshSmartPhone="ssh root@192.168.0.112"


# ls
alias ls="ls --color"
alias la="ls -a"

# gdb
alias gdb="gdb -q"

# ip
alias cpdir="pwd | xsel -b -i"


###############################################################################



##############################: EXPORT :#######################################

# ps1

export PS1="\[\e[31m\]\u\[\e[m\] \[\e[32m\]\w\[\e[m\]\
 \[\e[36m\]\`git branch 2> /dev/null | \
  sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'\`\[\e[m\]\[\e[32m\]\\$\[\e[m\]:\n"

# man mais bonito
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# lang
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#local bin
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.local/tex-live/bin/x86_64-linux
export PATH=$PATH:~/.local/2020/bin/x86_64-linux



# Android
export ANDROID_NDK_ROOT=/home/$USER/.android/Ndk
export ANDROID_HOME=/home/$USER/.android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export ANDROID_SDK_ROOT=$ANDROID_HOME

# JAVA
export JAVA_HOME="~/Documents/Programs/jdk-15.0.2"
# export JAVA_HOME="/home/casimir/Documents/Programs/java-se-8u41-ri"
export PATH="$PATH:~/Documents/Programs/jdk-15.0.2/bin/"

# History

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

###############################################################################


#############################: NVM SCRIPTS :###################################

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

###############################################################################


############################: HISTORY CONFIG :#################################

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

###############################################################################


############################: VIM BASH :#######################################

set -o vi #Seta o modo vim para o terminal
bind 'set show-mode-in-prompt on' #mostra o modo que estou

# define as cores e oque vai estar escrito
bind 'set vi-cmd-mode-string \1\e[33;1m\2└─[cmd] \1\e[0m\2'

# define as cores do modo inserção
bind 'set vi-ins-mode-string \1\e[34;1m\2└─[ins] \1\e[0m\2'

###############################################################################
export DOT="/home/casimir/Documents/projetos/dotnet-core2021"
export PATH=/home/casimir/.nvm/versions/node/v14.15.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/home/casimir/.dotnet/tools:/home/casimir/.local/bin:/home/casimir/.local/tex-live/bin/x86_64-linux:/home/casimir/.local/2020/bin/x86_64-linux:/home/casimir/.android/Sdk/tools:/home/casimir/.android/Sdk/platform-tools:~/Documents/Programs/jdk-15.0.2/bin/:/usr/local/go/bin
export PATH=/home/casimir/.nvm/versions/node/v14.15.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/home/casimir/.dotnet/tools:/home/casimir/.local/bin:/home/casimir/.local/tex-live/bin/x86_64-linux:/home/casimir/.local/2020/bin/x86_64-linux:/home/casimir/.android/Sdk/tools:/home/casimir/.android/Sdk/platform-tools:~/Documents/Programs/jdk-15.0.2/bin/:/usr/local/go/bin
export PATH=/home/casimir/.nvm/versions/node/v14.15.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/home/casimir/.dotnet/tools:/home/casimir/.local/bin:/home/casimir/.local/tex-live/bin/x86_64-linux:/home/casimir/.local/2020/bin/x86_64-linux:/home/casimir/.android/Sdk/tools:/home/casimir/.android/Sdk/platform-tools:~/Documents/Programs/jdk-15.0.2/bin/:/usr/local/go/bin
. "$HOME/.cargo/env"
