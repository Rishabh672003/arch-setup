yay -S --needed --noconfirm wget &&
cd /etc/pacman.d/ && sudo wget -c https://gitlab.com/Austcool-Walker/PKGBUILDS/-/raw/master/endeavouros-mirrorlist/endeavouros-mirrorlist &&
cd $HOME/ && sudo wget -c https://gitlab.com/Austcool-Walker/PKGBUILDS/-/raw/master/endeavouros-keyring/PKGBUILD && makepkg -si &&
echo "[endeavouros]
SigLevel = PackageRequired
Include = /etc/pacman.d/endeavouros-mirrorlist" | sudo tee -a /etc/pacman.conf;
sudo pacman -Syyu
