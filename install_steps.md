# Installation Steps for Debian

- Install debian (without a desktop environment selected)
- Clone this dotfiles repo
- Install dotlink and link dotfiles
- Add "contrib" and "non-free-firmware" to `/etc/apt/sources.list`
- Add support for 32-bit software (`sudo dpkg --add-architecture i386 && sudo apt update`)
- Install debian packages described in `installed_packages`
- Run through setup scripts in `.local/bin/setup`
