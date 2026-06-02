# dotfiles-dwm

Dotfiles setup based on [ArchWiki Dotfiles](https://wiki.archlinux.org/title/Dotfiles)

## Cloning

```sh
git clone --bare https://github.com/l0py2/dotfiles-dwm.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
dotfiles config --lobal status.showUntrackedFiles no
dotfiles checkout
```
