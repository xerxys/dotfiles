#!/bin/bash

# .bashrc
dorfdelete $HOME/.bashrc
ln -sn $DOTFILES/bash/bash.rc $HOME/.bashrc

# .oh-my-bash
dorfdelete $HOME/.oh-my-bash
ln -sn $DOTFILES/bash/oh-my-bash $HOME/.oh-my-bash
