#!/bin/bash

# .config/kitty
dorfdelete $HOME/.config/kitty
ln -sn $DOTFILES/kitty $HOME/.config/kitty
