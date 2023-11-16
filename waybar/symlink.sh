#!/bin/bash

# .config/waybar
dorfdelete $HOME/.config/waybar
ln -sn $DOTFILES/waybar $HOME/.config/waybar
