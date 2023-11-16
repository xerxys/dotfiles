#!/bin/bash

# .config/wofi
dorfdelete $HOME/.config/wofi
ln -sn $DOTFILES/wofi $HOME/.config/wofi
