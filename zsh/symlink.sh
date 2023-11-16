#!/bin/bash

#SOURCE dorfdelete function
source $DOTFILES/scripts/dorfdelete.sh

# .zshrc
dorfdelete $HOME/.zshrc
ln -sn $DOTFILES/zsh/zsh.rc $HOME/.zshrc

# powerlevel10k
dorfdelete $HOME/powerlevel10k
ln -sn $DOTFILES/zsh/powerlevel10k $HOME/powerlevel10k

# .p10k.zsh
dorfdelete $HOME/.p10k.zsh
ln -sn $DOTFILES/zsh/p10k.zsh $HOME/.p10k.zsh

# .oh-my-zsh
dorfdelete $HOME/.oh-my-zsh
ln -sn $DOTFILES/zsh/oh-my-zsh $HOME/.oh-my-zsh
