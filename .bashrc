# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

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
alias sshKali="ssh casimir@192.168.100.113"
alias sshCam="ssh pedro@192.168.0.108"


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
rm = rm -f
#Configuração do Bash


if [[ $SHLVL != "2" ]]
then
tmux -S /var/tmux/$USER new-session -A -s "$USER"
fi


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

#Flutter
export PATH="$PATH:/home/pedro/Documentos/programas/flutter/bin"

#Android

export ANDROID_NDK_ROOT=/home/pedro/.android/Ndk

export ANDROID_HOME=/home/$USER/.android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
#export PATH=${PATH}:$ANDROID_HOME/cmdline-tools:$ANDROID_HOME/cmdline-tools/tools/bin
export ANDROID_SDK_ROOT=$ANDROID_HOME


export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

#Windows

export MINGW32_PREFIX="/usr/bin/i686-w64-mingw32-"
export MINGW64_PREFIX="/usr/bin/x86_64-w64-mingw32-"

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
  PS1='\n${}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 " (%s)")\[\033[01;34m\]$\[\033[00m\]\\r\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

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

export PS1="\[\e[32;40m\]\u\[\e[m\]\[\e[34m\]\w\[\e[m\]:\[\e[31;40m\]\`parse_git_branch\`\[\e[m\]\[\e[34;40m\]\\$\[\e[m\]:\n "
#zenburnn

setxkbmap -option shift:both_capslock
export PATH="$PATH:/sbin"
export SCONSFLAGS="-j4"

# TMUX autostart
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi
export HISTTIMEFORMAT="%d/%m/%y %T "
