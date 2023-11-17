# dotfiles
My Arch Linux dotfiles and installation scripts

## GETTING STARTED
### WARNING
#### MY Hyprland.conf IS SET UP FOR MY MONITORS. EARLY IN THE CONF FILE THERE'S A MONITOR SECTION. TO IDENTIFY YOUR MONITOR NAMES RUN `hyprctl monitors` AND TAILOR IT TOWARDS YOUR STUFF
### Prerequisites
- [Zsh](https://www.zsh.org) should be installed (v4.3.9 or more recent is fine but we prefer 5.0.8 and newer). If not pre-installed (run `zsh --version` to confirm), check the following wiki instructions here: [Installing ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- `git` should be installed

### My Fonts
- Your Favorite [Nerd Font](https://www.nerdfonts.com/) to add symbols and such (I use Mononoki Nerd Font)
- [noto-fonts-cjk](https://github.com/notofonts/noto-cjk) for Chinese, Japanese, and Korean fonts
- [Powerline Fonts](https://github.com/powerline/fonts) to use with the Powerline Themes for bash and zsh

#### Installation
##### 1. Clone The Repository

```sh
git clone https://github.com/xerxys/dotfiles.git ~/dotfiles
```

##### 2. Initiate the Symlinks

```sh
cd $HOME/dotfiles/scripts
mastersym.sh
```

`mastersym.sh` scans every subdirectory of the dotfiles directory for their own `symlink.sh` and executes them.

Each individual `symlink.sh` will delete any files or directories in the locations they need to create a symbolic link and then create one.

### COMING SOON???

1. I hope to make an installation script for all the applications which have configs saved in this repository but whether that will happen or not remains to be seen.

2. Switch from waybar to [EWW](https://github.com/elkowar/eww) cause I despise waybar

3. [UNDER CONSTRUCTION] 
