# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# Alias su -

alias su="su -"
#man mais bonito
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
#NEOVIM PATH
VI="$HOME/.config/nvim/"
#Alias do pronton
export STEAM_COMPAT_DATA_PATH=$HOME/proton
export PATH="$PATH:/home/pedro/.local/share/Steam/steamapps/common/Proton\ 5.0/"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# ALIAS SSH
alias sshWindows="ssh fulaninho@192.168.100.170"
alias sshKali="ssh casimir@192.168.100.182"
alias sshCam="ssh pedro@192.168.0.108"
alias live-server="live-server --browser=firefox --port=8081"

#ls

alias ls="ls --color"
alias la="ls -a"
#gdb
alias gdb="gdb -q"


alias cpdir="pwd | xsel -b -i"
#Alias
#alias myphone="scrcpy -s 192.168.1.107:5555"
alias translate="trans -b -e bing"
alias cfv="vi /home/pedro/.config/nvim/init.vim"
alias noesc="sed 's|\x1b\[[;0-9]*m||g'"
alias ip="ip -c"
#alias camera= "ssh pedro@192.168.1.112"
alias desktop="Área de trabalho/"
#Alias para deixar colorido o output
alias ccat='pygmentize -g'
#Configuração do Bash

set -o vi #Seta o modo vim para o terminal
bind 'set show-mode-in-prompt on' #mostra o modo que estou
bind 'set vi-cmd-mode-string \1\e[33;1m\2└─[cmd] \1\e[0m\2' # define as cores e oque vai estar escrito
bind 'set vi-ins-mode-string \1\e[34;1m\2└─[ins] \1\e[0m\2' # define as cores do modo inserção

#desabilitar o caplock
#xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
#comando para conectar ao ssh
#alias abrir="ssh -p 8022 u0_a97@192.168.113"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#Android

export ANDROID_NDK_ROOT=/home/$USER/.android/Ndk
export ANDROID_HOME=/home/$USER/.android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
#export PATH=${PATH}:$ANDROID_HOME/cmdline-tools:$ANDROID_HOME/cmdline-tools/tools/bin
export ANDROID_SDK_ROOT=$ANDROID_HOME


#JAVA
export JAVA_HOME="/opt/openjdk-bin-11.0.9_p11/"

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

export HISTTIMEFORMAT="%d/%m/%y %T "

# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo "[${BRANCH}${STAT}]"
	else
		echo ""
	fi
}

# get current status of git repo
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

export PS1="\[\e[33m\]\h\[\e[m\]: \[\e[31m\]\u\[\e[m\] \w\\$\[\e[30m\]:\[\e[m\] \[\e[31m\]\`parse_git_branch\`\[\e[m\] \n"
