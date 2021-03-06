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
Black='\033[0;30m'		# Black
Red='\033[0;31m'        # Red
Green='\033[0;32m'		# Green
Yellow='\033[0;33m'     # Yellow
Blue='\033[0;34m'       # Blue
Purple='\033[0;35m'     # Purple
Cyan='\033[0;36m'		# Cyan
White='\033[0;37m'      # White

# Bold
BBlack='\033[1;30m'		# Black
BRed='\033[1;31m'       # Red
BGreen='\033[1;32m'     # Green
BYellow='\033[1;33m'    # Yellow
BBlue='\033[1;34m'      # Blue
BPurple='\033[1;35m'    # Purple
BCyan='\033[1;36m'		# Cyan
BWhite='\033[1;37m'     # White

# Background
On_Black='\033[40m'		# Black
On_Red='\033[41m'       # Red
On_Gren='\033[42m'		# Green
On_Yellow='\033[43m'    # Yellow
On_Blue='\033[44m'      # Blue
On_Purple='\033[45m'    # Purple
On_Cyan='\033[46m'		# Cyan
On_White='\033[47m'		# White

NC="\033[m"					# Color Reset

ALERT=${BWhite}${On_Red} # Bold White on red background

echo -e "${Cyan}This is BASH ${Red}${BASH_VERSION%.*}${Cyan}${NC}"
if [ -x /usr/games/fortune ]; then
	/usr/games/fortune -s     # Makes our day a bit more fun.... :-)
fi

function _exit()              # Function to run upon exit of shell.
{
	echo -e "${Red}Hasta la vista, baby${NC}"
}
trap _exit EXIT


#-------------------------------------------------------------
# Prompt
#-------------------------------------------------------------

# GIT Branch
parse_git_branch ()
{
   if git rev-parse --git-dir >/dev/null 2>&1
   then
      gitver=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
   else
      return 0
   fi
   echo -e $gitver
}

branch_color ()
{
   if git rev-parse --git-dir >/dev/null 2>&1
   then
      color=""
      if git diff --quiet 2>/dev/null >&2
      then
         color="${Green}"
      else
         color=${Red}
      fi
   else
      return 0
   fi
   echo -ne $color
}

# define the awk script using heredoc notation for easy modification
MYPSDIR_AWK=$(cat << 'EOF'
BEGIN { FS = OFS = "/" }
		{ 
		   if (length($0) > 30 && NF > 5)
				 print $1,$2,$3,".." NF-5 "..",$(NF-1),$NF
			else
				print $0
		}
EOF
)

# my replacement for \w prompt expansion
export MYPSDIR='$(echo -n "${PWD/#$HOME/~}" | awk "$MYPSDIR_AWK")'

# the fancy colorized prompt: [0 user@host ~]%
# return code is in green, user@host is in bold/white
#export PS1='[\[\033[1;32m\]$?\[\033[0;0m\] \[\033[0;1m\]\u@\h\[\033[0;0m\] $(eval "echo ${MYPSDIR}")] $ '
export PS1='\[\033[0;1m\]\u@$(branch_color)$(parse_git_branch)\[\033[0;0m\] $(eval "echo ${MYPSDIR}") $ '

# set x/ssh window title as well
#export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*} $(eval "echo ${MYPSDIR}")\007"'
#export PROMPT_COMMAND='echo -ne "${USER}@$(branch_color)$(parse_git_branch)${NC} $(eval "echo ${MYPSDIR}")\007"'
