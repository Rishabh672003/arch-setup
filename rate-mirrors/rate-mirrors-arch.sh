rm -rf ./rate-mirrors-bin;   

git clone https://aur.archlinux.org/rate-mirrors-bin && cd rate-mirrors-bin && makepkg -si;

export TMPFILE="$(mktemp)"; \
	 sudo true; \
	 rate-mirrors --allow-root --save=$TMPFILE arch --max-delay=21600 \
      && sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist-backup \
      && sudo mv $TMPFILE /etc/pacman.d/mirrorlist \




