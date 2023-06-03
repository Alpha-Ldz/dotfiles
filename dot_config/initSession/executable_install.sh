#/bin/ssh

sudo pacman -S - < ~/.config/initSession/packages.txt

(cd ~/.local/share/chezmoi/ && git remote remove origin)
(cd ~/.local/share/chezmoi/ && git remote add origin git@github.com:Alpha-Ldz/dotfiles.git)

mkdir ~/Documents
mkdir ~/Documents/Git

(cd ~/Documents/Git/ && git clone https://aur.archlinux.org/yay.git)

(cd ~/Documents/Git/yay && makepkg -si )

yay -S --needed --noconfirm - < ~/.config/initSession/packagesYay.txt

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sudo systemctl enable ly.service preload.service

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm -rf ~/.zshrc
mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc

sudo reboot
