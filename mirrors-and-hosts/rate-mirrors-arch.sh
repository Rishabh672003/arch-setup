 export TMPFILE="$(mktemp)"; \
	 sudo true; \
	 rate-mirrors --allow-root --save=$TMPFILE arch --max-delay=21600 \
      && sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist-backup \
      && sudo mv $TMPFILE /etc/pacman.d/mirrorlist \
      && eos-rankmirrors \
      && sudo chmod 777 /etc/pacman.d/mirrorlist /etc/pacman.d/endeavouros-mirrorlist \
      && sudo bash /home/rishabh/mirrors-and-hosts/hosts-maker.sh 

cd /etc/pacman.d/ && sudo rm endeavouros-mirrorlist.*

