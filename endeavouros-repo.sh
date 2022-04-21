sudo true;
sudo echo "[endeavouros]
SigLevel = PackageRequired
Include = /etc/pacman.d/endeavouros-mirrorlist" >> /etc/pacman.conf;
cd /etc/pacman.d/ && sudo wget -c https://gitlab.com/Austcool-Walker/PKGBUILDS/-/raw/master/endeavouros-mirrorlist/endeavouros-mirrorlist;
cd $HOME/ && sudo wget -c https://gitlab.com/Austcool-Walker/PKGBUILDS/-/raw/master/endeavouros-keyring/PKGBUILD && makepkg -si;
sudo pacman -Syyu


