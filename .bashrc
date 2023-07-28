export EDITOR=nvim
export VISUAL=nvim

if [[ $- != *i* ]]
then
	return
fi

shopt -s checkwinsize
shopt -s histappend

export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config

alias dotf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias rm='rm -I'
alias ls='ls -alh --color=always'
