## Arch Linux Setup
A personal reference for my Arch Linux setup.

The `config` folder contains config files and dotfiles relative to a home directory.
The `installed_packages.txt` file lists all installed packages generated via `yay -Qe`

### usage

#### Config
To install ALL config files and dotfiles listed in this repo, _exactly_ as is:
1. clone this repo
1. Run `sh config.sh`. Symlinks to these files will be created in home directory. Any old config files and dotfiles will be placed in a `./config_backup` directory in this project.

Alternatively, use these files as reference to manually create/update config files.

#### Packages
To regenerate list of installed packages:
1. Run `sh regenerate_installed_packages.sh`

