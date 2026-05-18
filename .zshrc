# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# Fetch sys info
# fastfetch --config screenfetch.jsonc --logo arch_small
fastfetch --config .config/fastfetch/config.jsonc --logo debian-linux_small --logo-padding-top 8 --logo-padding-left 3 --title-color-user cyan --title-color-host yellow --title-color-at red --color-separator blue --color-keys yellow

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# My custom varibles
export ZSH_CUSTOM=~/.config/zsh
export PLUGINS_DIR=~/.config/zsh/plugins
export PROJ_DIR=~/Documents/projects/
export FOCUS_SOUNDS_DIR=~/Media/2TBStorage/FocusSounds/
export MY_BIN_DIR=~/.mybin/

# Make pushd quiet
setopt PUSHDSILENT

# My aliases
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"
alias v="nvim"
alias v.="nvim ."
alias notes="pushd ~/Documents/notes"
# alias proj="echo $($ZSH_CUSTOM/proj.sh $1) | pushd"
alias repos="pushd ~/Documents/repos"
alias cd="pushd"
alias :q="exit"
alias focus="nohup mpv $FOCUS_SOUNDS_DIR/* --shuffle &"
alias sudo="sudo "

# Nala
alias apt="\nala"
alias apt-get="\nala"
export FORCE_COLOR=true

# Custom scripts
alias todo=$ZSH_CUSTOM/todo.sh
proj() {
  pushd $($ZSH_CUSTOM/proj.sh $1)
  git fetch
}

# Set zsh history file
HISTFILE=$ZSH_CUSTOM/zsh_history
HISTZISE=10000
SAVEHIST=10000
setopt appendhistory
touch $HISTFILE

# Make ls colorful :)
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# Source Rust
# source "$HOME/.cargo/env"

# My plugins
source $PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PLUGINS_DIR/powerlevel10k/powerlevel10k.zsh-theme
source $PLUGINS_DIR/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh

# Bind keys for substring history
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
export PATH=/home/lambda/Documents/repos/odin:$PATH
export PATH=$PATH:$MY_BIN_DIR

