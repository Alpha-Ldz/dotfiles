rm -rf ~/.config/hypr && mv ./config/hypr ~/.config/
mv ./config/* ~/.config/
mv zshrc ../.zshrc
git reset --hard

ssh-keygen -t rsa -b 4096
git config --global user.email "pllandouzi@gmail.com"
git config --global user.name "Pierre-Louis"
git remote remove origin
git remote add origin git@github.com:Alpha-Ldz/dotfiles.git

sudo pacman -Syu rofi neovim kitty zsh npm unzip fd ripgrep tree python-pip jq virt-manager virt-viewer qemu vde2 ebtables iptables-nft nftables dnsmasq bridge-utils ovmf swtpm linux-firmware-qlogic

git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
cd .. && rm -rf yay

yay -S --needed --noconfirm swww thorium-browser-bin ttf-firacode-nerd wd719x-firmware upd72020x-fw aic94xx-firmware 

mkdir ~/.oh-my-posh
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.oh-my-posh
