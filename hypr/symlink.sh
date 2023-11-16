#!/bin/bash

# .config/hypr
dorfdelete $HOME/.config/hypr
ln -sn $DOTFILES/hypr $HOME/.config/hypr
