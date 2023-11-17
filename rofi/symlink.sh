#!/bin/bash

# .config/rofi/config.rasi
dorfdelete $HOME/.config/rofi/config.rasi
ln -sn $DOTFILES/rofi/config.rasi $HOME/.config/rofi/config.rasi

# .config/rofi/file-browser
dorfdelete $HOME/.config/rofi/file-browser
ln -sn $DOTFILES/rofi/file-browser $HOME/.config/rofi/file-browser

# .config/rofi/file-browser-extended
dorfdelete $HOME/.config/rofi/file-browser-extended
ln -sn $DOTFILES/rofi/file-browser-extended $HOME/.config/rofi/file-browser-extended

# .local/share/rofi/themes
dorfdelete $HOME/.local/share/rofi/themes
ln -sn $DOTFILES/rofi/themes $HOME/.local/share/rofi/themes
