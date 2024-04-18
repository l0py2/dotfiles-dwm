export EDITOR=nvim
export VISUAL=nvim

if [[ $- != *i* ]]
then
	return
fi

shopt -s checkwinsize
shopt -s histappend

alias dotf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias rm='rm -I'
alias ls='ls -alh --color=always'

PS1='\[\e[96m\]\u\[\e[m\]@\[\e[94m\]\h\[\e[m\] \[\e[92m\]\w\[\e[m\] \$ '
