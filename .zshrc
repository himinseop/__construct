# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/himinseop/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# using short key
alias ssh_web='docker exec -it web bash'
alias ssh_api='docker exec -it api bash'

# using AWS
#alias ssh_qa='ssh -i "~/.ssh/wmp_o2o.pem" ubuntu@ec2-13-124-20-106.ap-northeast-2.compute.amazonaws.com'
alias ssh_qa_gw='ssh -i "~/.ssh/wmp-o2o-staging.pem" ubuntu@ec2-3-36-31-61.ap-northeast-2.compute.amazonaws.com'
alias ssh_qa='ssh -i "~/.ssh/wmp-o2o-staging.pem" ubuntu@ec2-52-79-137-149.ap-northeast-2.compute.amazonaws.com'
alias ssh_qa_front='ssh -i "~/.ssh/wmp-o2o-staging.pem" ubuntu@ec2-13-209-83-199.ap-northeast-2.compute.amazonaws.com'
alias ssh_qa_agency='ssh -i "~/.ssh/wmp-o2o-staging.pem" o2olab@ec2-52-78-79-195.ap-northeast-2.compute.amazonaws.com'
alias ssh_qa_auth='ssh -i "~/.ssh/wmp-o2o-staging.pem" o2olab@ec2-13-125-228-132.ap-northeast-2.compute.amazonaws.com'
alias ssh_qa_devops='ssh -i "~/.ssh/wmp-o2o-staging.pem" o2olab@ec2-13-125-72-90.ap-northeast-2.compute.amazonaws.com'

alias ssh_himinseop_devops='ssh -i "~/.ssh/himinseop-devops.pem" ubuntu@ec2-3-34-24-33.ap-northeast-2.compute.amazonaws.com'
alias ssh_devops='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-13-125-241-4.ap-northeast-2.compute.amazonaws.com'

alias ssh_admin1='ssh -i "~/.ssh/wmp-o2o-dev.pem" o2olab@ec2-13-125-228-229.ap-northeast-2.compute.amazonaws.com'
alias ssh_admin2='ssh -i "~/.ssh/wmp-o2o-dev.pem" o2olab@ec2-13-209-17-11.ap-northeast-2.compute.amazonaws.com'
alias ssh_batch='ssh -i "~/.ssh/wmp-o2o-dev.pem" o2olab@ec2-15-165-25-166.ap-northeast-2.compute.amazonaws.com'
alias ssh_batch_external='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-52-79-235-96.ap-northeast-2.compute.amazonaws.com'
alias ssh_batch_curator='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-13-209-99-132.ap-northeast-2.compute.amazonaws.com' # GoLan
alias ssh_auth='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-13-124-184-178.ap-northeast-2.compute.amazonaws.com'
alias ssh_front1='ssh -i "~/.ssh/wmp-o2o-dev.pem" o2olab@'
alias ssh_front2='ssh -i "~/.ssh/wmp-o2o-dev.pem" o2olab@'
alias ssh_front3='ssh -i "~/.ssh/wmp-o2o-dev.pem" o2olab@ec2-54-180-132-64.ap-northeast-2.compute.amazonaws.com'
alias ssh_front4='ssh -i "~/.ssh/wmp-o2o-dev.pem" o2olab@ec2-13-124-58-163.ap-northeast-2.compute.amazonaws.com'
alias ssh_front5='ssh -i "~/.ssh/wmp-o2o-dev.pem" o2olab@ec2-13-124-103-92.ap-northeast-2.compute.amazonaws.com'
alias ssh_biz='ssh -i "~/.ssh/wmp-o2o-dev.pem" o2olab@ec2-3-34-99-13.ap-northeast-2.compute.amazonaws.com'
alias ssh_api1='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-54-180-155-82.ap-northeast-2.compute.amazonaws.com'
alias ssh_api2='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-54-180-125-125.ap-northeast-2.compute.amazonaws.com'
alias ssh_api3='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-13-209-19-85.ap-northeast-2.compute.amazonaws.com'
alias ssh_api4='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-54-180-114-79.ap-northeast-2.compute.amazonaws.com'
alias ssh_api5='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-52-78-22-183.ap-northeast-2.compute.amazonaws.com'
alias ssh_api6='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-13-125-205-200.ap-northeast-2.compute.amazonaws.com'
alias ssh_api7='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-54-180-109-56.ap-northeast-2.compute.amazonaws.com'
alias ssh_api8='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-3-34-198-78.ap-northeast-2.compute.amazonaws.com'
alias ssh_api9='ssh -i "~/.ssh/o2o-system.pem" o2olab@'
alias ssh_api10='ssh -i "~/.ssh/o2o-system.pem" o2olab@'
alias ssh_s1='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-13-125-249-87.ap-northeast-2.compute.amazonaws.com'
alias ssh_s2='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-15-164-102-21.ap-northeast-2.compute.amazonaws.com'
alias ssh_core1='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-15-164-93-68.ap-northeast-2.compute.amazonaws.com'
alias ssh_core2='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-15-165-203-37.ap-northeast-2.compute.amazonaws.com'
alias ssh_core3='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-15-164-95-101.ap-northeast-2.compute.amazonaws.com'
alias ssh_core4='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-3-35-26-107.ap-northeast-2.compute.amazonaws.com'
alias ssh_core5='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-13-125-241-203.ap-northeast-2.compute.amazonaws.com'
alias ssh_core6='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-15-164-50-184.ap-northeast-2.compute.amazonaws.com'
alias ssh_core7='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-3-36-71-24.ap-northeast-2.compute.amazonaws.com'
alias ssh_core8='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-54-180-153-213.ap-northeast-2.compute.amazonaws.com'
alias ssh_core9='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-3-36-66-143.ap-northeast-2.compute.amazonaws.com'
alias ssh_core10='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-3-34-179-65.ap-northeast-2.compute.amazonaws.com'
alias ssh_board1='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-13-124-144-3.ap-northeast-2.compute.amazonaws.com'
alias ssh_event1='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-54-180-159-120.ap-northeast-2.compute.amazonaws.com'
alias ssh_event2='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-54-180-87-170.ap-northeast-2.compute.amazonaws.com'
alias ssh_event3='ssh -i "~/.ssh/o2o-system.pem" o2olab@'
alias ssh_event4='ssh -i "~/.ssh/o2o-system.pem" o2olab@'
alias ssh_curator1='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-3-34-199-164.ap-northeast-2.compute.amazonaws.com'
alias ssh_curator2='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-54-180-104-77.ap-northeast-2.compute.amazonaws.com'
alias ssh_curator3='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-3-34-134-247.ap-northeast-2.compute.amazonaws.com'
alias ssh_curator4='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-15-164-97-132.ap-northeast-2.compute.amazonaws.com'
alias ssh_curator5='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-54-180-93-170.ap-northeast-2.compute.amazonaws.com'
alias ssh_storage1='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-13-209-6-138.ap-northeast-2.compute.amazonaws.com'
alias ssh_storage2='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-15-164-212-194.ap-northeast-2.compute.amazonaws.com'
alias ssh_storage3='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-15-164-212-194.ap-northeast-2.compute.amazonaws.com'
alias ssh_search1='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-13-125-192-103.ap-northeast-2.compute.amazonaws.com'
alias ssh_proxy='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-13-209-49-207.ap-northeast-2.compute.amazonaws.com' # proxy, core
alias ssh_pos1='ssh -i "~/.ssh/wmp-o2o-dev.pem" o2olab@ec2-13-209-7-92.ap-northeast-2.compute.amazonaws.com'
alias ssh_pos2='ssh -i "~/.ssh/wmp-o2o-dev.pem" o2olab@ec2-54-180-89-201.ap-northeast-2.compute.amazonaws.com'
alias ssh_posw1='ssh -i "~/.ssh/wmp-o2o-dev.pem" o2olab@ec2-13-125-245-51.ap-northeast-2.compute.amazonaws.com' # wakeup
alias ssh_posw2='ssh -i "~/.ssh/wmp-o2o-dev.pem" o2olab@ec2-13-125-208-112.ap-northeast-2.compute.amazonaws.com'
alias ssh_socket1='ssh -i "~/.ssh/socket-production.pem" ubuntu@ec2-15-165-129-155.ap-northeast-2.compute.amazonaws.com'
alias ssh_socket2='ssh -i "~/.ssh/socket-production.pem" ubuntu@ec2-54-180-150-33.ap-northeast-2.compute.amazonaws.com'
alias ssh_socket3='ssh -i "~/.ssh/socket-production.pem" ubuntu@ec2-52-78-16-149.ap-northeast-2.compute.amazonaws.com'
alias ssh_batch_es='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-3-34-45-77.ap-northeast-2.compute.amazonaws.com'
alias ssh_batch_es2='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-13-209-6-109.ap-northeast-2.compute.amazonaws.com'
alias ssh_es_data1='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-3-34-126-130.ap-northeast-2.compute.amazonaws.com'
alias ssh_notify1='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-13-124-120-74.ap-northeast-2.compute.amazonaws.com'
alias ssh_notify_sms='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-13-209-198-39.ap-northeast-2.compute.amazonaws.com'
alias ssh_notify_email='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-54-180-119-171.ap-northeast-2.compute.amazonaws.com'
alias ssh_agency='ssh -i "~/.ssh/wmp-o2o-dev.pem" o2olab@ec2-13-209-14-61.ap-northeast-2.compute.amazonaws.com'
alias ssh_log='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-15-164-225-19.ap-northeast-2.compute.amazonaws.com'
alias ssh_elk='ssh -i "~/.ssh/o2o-system.pem" o2olab@ec2-15-164-216-250.ap-northeast-2.compute.amazonaws.com'

#alias ssh_himinseop='ssh -i "~/.ssh/himinseop.pem" ubuntu@ec2-52-79-239-222.ap-northeast-2.compute.amazonaws.com'
