#!/bin/sh

# AMD Graphics drivers were installed using this guide:
# https://wiki.debian.org/AtiHowTo

# Add support for i386 architecture
sudo dpkg --add-architecture i386
sudo apt update

# Add support for proprietary graphics drivers
sed -i 's/main non-free-firmware/main contrib non-free-firmware/g'
sudo apt update

# Install applications
sudo apt install i3 \
	xinit \
	firefox-esr \
	alacritty \
	pavucontrol \
	neovim \
	htop \
	feh \
	rtorrent \
	zsh \
	git \
	curl \
	build-essential \
	pkg-config \
	python3.11-venv \
	bat \
	tree \
	xsel \
	tmux \
	byobu \
	pulseaudio \
	iwd

# Install exfat support
sudo apt install exfat-fuse exfatprogs

# Install ntfs support
sudo apt install ntfs-3g

# Install graphics drivers
sudo apt install firmware-amd-graphics \
	libgl1-mesa-dri \
	libglx-mesa0 \
	mesa-vulkan-drivers \
	xserver-xorg-video-all \
	libglx-mesa0:i386 \
	mesa-vulkan-drivers:i386 \
	libgl1-mesa-dri:i386

# Install cascadia code font
mkdir -p ~/Downloads/cascadia-code
cd ~/Downloads/cascadia-code
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/CascadiaCode.tar.xz
tar -xf CascadiaCode.tar.xz
rm -rf CascadiaCode.tar.xz
cd ..
sudo cp -r cascadia-code /usr/share/fonts/truetype
fc-cache

# Install ly
sudo apt install libxcb-xkb-dev libpam0g-dev
cd ~/Downloads
git clone --recurse-submodules https://github.com/fairyglade/ly.git
cd ly
make && sudo make install installsystemd

# Install multimc
cd ~/Downloads
wget https://files.multimc.org/downloads/multimc_1.6-1.deb
sudo apt install ./multimc_1.6-1.deb

# Enable services
systemctl enable --user --now pulseaudio
sudo systemctl enable ly

# Link dotfiles
cd ~/dotfiles
./dotlink .config/alacritty
./dotlink .config/nvim
./dotlink .config/i3
./dotlink .gitconfig
./dotlink .tmux.conf
./dotlink install

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Remove the provided zshrc and link ours
rm -rf ~/.zshrc
./dotlink .zshrc
