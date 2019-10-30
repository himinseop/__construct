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
alias ssh_qa='ssh -i "~/.ssh/wmp-o2o-staging.pem" ubuntu@ec2-52-79-137-149.ap-northeast-2.compute.amazonaws.com'
alias ssh_qa_front='ssh -i "~/.ssh/wmp-o2o-staging.pem" ubuntu@ec2-13-209-83-199.ap-northeast-2.compute.amazonaws.com'

alias ssh_devops='ssh -i "~/.ssh/himinseop-devops.pem" ubuntu@ec2-54-180-107-117.ap-northeast-2.compute.amazonaws.com'
alias ssh_admin='ssh -i "~/.ssh/wmp-o2o-dev.pem" o2olab@ec2-52-79-168-181.ap-northeast-2.compute.amazonaws.com'
alias ssh_front1='ssh -i "~/.ssh/wmp-o2o-dev.pem" ubuntu@ec2-52-78-12-34.ap-northeast-2.compute.amazonaws.com'
alias ssh_front2='ssh -i "~/.ssh/wmp-o2o-dev.pem" ubuntu@ec2-52-79-195-234.ap-northeast-2.compute.amazonaws.com'
alias ssh_api1='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-54-180-107-172.ap-northeast-2.compute.amazonaws.com'
alias ssh_api2='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-13-125-76-233.ap-northeast-2.compute.amazonaws.com'
alias ssh_core1='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-54-180-31-31.ap-northeast-2.compute.amazonaws.com'
alias ssh_board1='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-13-124-144-3.ap-northeast-2.compute.amazonaws.com'
alias ssh_event1='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-54-180-159-120.ap-northeast-2.compute.amazonaws.com'
alias ssh_storage1='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-13-125-194-102.ap-northeast-2.compute.amazonaws.com'
alias ssh_search1='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-13-125-192-103.ap-northeast-2.compute.amazonaws.com'
alias ssh_s1='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-13-125-249-87.ap-northeast-2.compute.amazonaws.com'
alias ssh_s2='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-15-164-96-43.ap-northeast-2.compute.amazonaws.com'
alias ssh_pos='ssh -i "~/.ssh/wmp-o2o-dev.pem" ubuntu@ec2-13-209-69-253.ap-northeast-2.compute.amazonaws.com'
alias ssh_socket='ssh -i "~/.ssh/socket-production.pem" ubuntu@ec2-54-180-36-171.ap-northeast-2.compute.amazonaws.com'
alias ssh_batch_es='ssh -i "~/.ssh/o2o-system.pem" ubuntu@ec2-15-164-100-123.ap-northeast-2.compute.amazonaws.com'

alias ssh_himinseop='ssh -i "~/.ssh/himinseop.pem" ubuntu@ec2-52-79-239-222.ap-northeast-2.compute.amazonaws.com'
