# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
 . /etc/bashrc
fi

export LC_ALL=ko_KR.UTF-8
export LANG=ko_KR.UTF-8
export LANGUAGE=ko_KR.UTF-8

export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

# User specific aliases and functions
#
## aliases 'ls'
alias l="ls -l"
alias ll="ls -al"
alias lh="ls -lh .[a-zA-Z0-9]*"
alias lx='ls -lXB'  # 확장자별 정렬
alias lk='ls -lSr'  # 크기별
alias la='ls -Al'  # hidden file view
alias lr='ls -lR'  # 재귀적 ls
alias lt='ls -ltr'  # 날짜별 정렬
alias tree='tree -Cs'  # 'ls'
#
## aliases for Tape-ARchive(tar)
alias tart='tar tvzf'
alias tarc='tar cvzf'
alias tarx='tar xvzf'
#
## aliases to excute specific applications
alias man='man -a'
alias pu='\ps u'
alias ps='\ps -afl'
alias pl='ps -L'
#
## Diagnostics

alias ..="cd ..;ls"   # cd 명령후 파일목록 리스트 바로 출력, ccd 참조
alias be="vi ~/.bashrc;source ~/.bashrc"   # .bashrc 수정후 실행
alias cls="clear" 

gui=NONE
cterm=NONE
term=NONE


#--------------------------------------------------------------
#  Automatic setting of $DISPLAY (if not set already).
#  This works for me - your mileage may vary. . . .
#  The problem is that different types of terminals give
#+ different answers to 'who am i' (rxvt in particular can be
#+ troublesome) - however this code seems to work in a majority
#+ of cases.
#--------------------------------------------------------------

function get_xserver ()
{
    case $TERM in
        xterm )
            XSERVER=$(who am i | awk '{print $NF}' | tr -d ')''(' )
            # Ane-Pieter Wieringa suggests the following alternative:
            #  I_AM=$(who am i)
            #  SERVER=${I_AM#*(}
            #  SERVER=${SERVER%*)}
            XSERVER=${XSERVER%%:*}
            ;;
            aterm | rxvt)
            # Find some code that works here. ...
            ;;
    esac
}

if [ -z ${DISPLAY:=""} ]; then
    get_xserver
    if [[ -z ${XSERVER}  || ${XSERVER} == $(hostname) ||
       ${XSERVER} == "unix" ]]; then
          DISPLAY=":0.0"          # Display on local host.
    else
       DISPLAY=${XSERVER}:0.0     # Display on remote host.
    fi
fi

export DISPLAY


#-------------------------------------------------------------
# Greeting, motd etc. ...
#-------------------------------------------------------------

# Color definitions (taken from Color Bash Prompt HowTo).
# Some colors might look different of some terminals.
# For example, I see 'Bold Red' as 'orange' on my screen,
# hence the 'Green' 'BRed' 'Red' sequence I often use in my prompt.


# Normal Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

NC="\e[m"               # Color Reset

ALERT=${BWhite}${On_Red} # Bold White on red background


echo -e "${Cyan}This is BASH ${Red}${BASH_VERSION%.*}${Cyan}\
- DISPLAY on ${Red}$DISPLAY${NC}\n"
		 date
		 if [ -x /usr/games/fortune ]; then
			 /usr/games/fortune -s     # Makes our day a bit more fun.... :-)
			 fi

			 function _exit()              # Function to run upon exit of shell.
{
		echo -e "${Red}Hasta la vista, baby${NC}"
}
trap _exit EXIT


