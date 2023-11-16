#!/bin/bash

# .config/nvim
dorfdelete $HOME/.config/nvim
ln -sn $DOTFILES/nvim $HOME/.config/nvim
