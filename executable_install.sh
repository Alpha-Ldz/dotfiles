#/bin/ssh

sudo pacman -Syyu

sudo pacman -S - < .package.txt

mkdir ~/Documents
mkdir ~/Documents/Git

cd ~Documents/Git/

git clone https://aur.archlinux.org/yay.git

cd yay-git

makepkg -si

cd

yay -Sy - < .yay_Package.txt

sudo systemctl enable ly.service
