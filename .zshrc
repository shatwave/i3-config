# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.   
 export ZSH="/home/cyberpunk_7/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
#ZSH_THEME="cobalt3"
#ZSH_THEME="minia"
ZSH_THEME="clair"
#ZSH_THEME="oxide"
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

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

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
 export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export EDITOR='vim'

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

plugins=(
  git
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
)
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'




[[ $- != *i* ]] && return

setopt AUTO_CD # No cd needed to change directories
setopt BANG_HIST # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicate entries first when trimming history.
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS # Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_DUPS # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_SPACE # Don't record an entry starting with a space.
setopt HIST_REDUCE_BLANKS # Remove superfluous blanks before recording entry.
setopt HIST_SAVE_NO_DUPS # Don't write duplicate entries in the history file.
setopt INC_APPEND_HISTORY # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY # Share history between all sessions.


## List
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias l='ls' 					
alias l.="ls -A | egrep '^\.'"      

## Fix obvious typo's
alias cd..='cd ..'
alias sl="ls"
alias pdw="pwd"


## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## readable output
alias df='df -h'

## Run this after modifying .Xresources file
alias merge="xrdb ~/.Xresources"


## Aliases for software managment
## pacman or pm
alias pmsyu="sudo pacman -Syu --color=auto"
alias pacman='sudo pacman --color auto'
#alias trizen='torsocks terizen --color auto'
alias update='sudo pacman -Syu --color=auto'
alias pmqtdq='sudo pacman -Rs $(pacman -Qtdq)'

## generate a file containing installed package list
alias pkglist="pacman -Qqe >"
##    Q – Queries the package database. This option allows you to view installed packages and their files, other useful meta-information about individual packages (dependencies, conflicts, install date, build date, size).
##    q – Shows less information for certain query operations. This is useful when pacman’s output is processed in a script.
##    e – Lists explicitly installed packages that are not required by any other package.

## install all package in the generated package list
alias install-pkglist="sudo pacman -S - <"

## ls group directory first
alias lsf="ls --group-directories-first"

## A funny meme :D
##

alias love="echo '\e[31mShell: \e[34mLove not found'"
alias happines="echo '\e[31mShell: \e[33mHappines not found'"
alias peace="echo '\e[31mShell: \e[35mPeace not found'"
alias kill="echo '\e[32mShell: \e[31mYou need to specify whom to kill'"
alias kill-everyone="echo '\e[32mShell: \e[31mBut! Genocide is illegal Sir!!'"
#alias love="echo '\e[31mShell: \e[34mLove not found \uF08A \uF00D'"
#alias happines="echo '\e[31mShell: \e[33mHappines not found \uF119'"
#alias peace="echo '\e[31mShell: \e[35mPeace not found \uF0E3'"
#alias kill="echo '\e[32mShell: \e[31mYou need to specify whom to kill \uF05B'"
#alias kill-everyone="echo '\e[32mShell: \e[31mBut! Genocide is illegal Sir!! \uF05C'"
#alias love="echo '\e[31mShell: \e[34mLove not found \uF08A \uF00D' && echo ' '"
#alias happines="echo '\e[31mShell: \e[33mHappines not found \uF119' && echo ' '"
#alias peace="echo '\e[31mShell: \e[35mPeace not found \uF0E3' && echo ' '"
#alias kill="echo '\e[32mShell: \e[31mYou need to specify whom to kill \uF05B' && echo ' '"
#alias kill-everyone="echo '\e[32mShell: \e[31mBut! Genocide is illegal Sir!! \uF05C' && echo ' '"

## Start CAVA Visualizer with color config
##
alias cava-froly="cava -p ~/.config/cava/config-froly"
alias cava-crimson="cava -p ~/.config/cava/config-crimson"
alias cava-cyan="cava -p ~/.config/cava/config-cyan"
alias cava-blue="cava -p ~/.config/cava/config-blue"

## Neofetch for Urxvt with internal padding
alias neopad="neofetch --config ~/.config/neofetch/config-padding"

## Neofetch with different distro logo color
##


## View and set wallpaper with feh
alias feh-view="feh --scale-down --auto-zoom"
alias feh-set="feh --bg-fill"
#alias feh-set="echo 'Wallpaper has been set for You, very nice choice :)' && feh --bg-fill"

## Refresh font cache
alias font-refresh="fc-cache -fv"

## ncmpcpp with album-art
alias ncmpcpp-art="ncmpcpp -c .ncmpcpp/config-art"

if [ -d $HOME/.scripts ];then 
   export PATH=$PATH:$HOME/.scripts 
fi

## self-destruct
rm()
{
  if [ "$1" = "-rf/" ]
  then
    shift
    echo '' && echo 'Do a self destruct in 5.. 4.. 3.. 2.. 1..' && echo 'Just kidding :p' && echo '' && echo "Let's taking a screenshot instead" && scrot -cd 5 "$@"
  else
    command rm "$@"
  fi
}



