cd /home/rishabh/mirrors-and-hosts
sudo rm hosts1 hosts2 hosts-all
curl -C - --output hosts1 https://block.energized.pro/ultimate/formats/hosts \
	-C - --output hosts2 https://raw.githubusercontent.com/x0uid/SpotifyAdBlock/master/hosts &&
	sudo cat hosts1 hosts2 > /home/rishabh/mirrors-and-hosts/hosts-all &&
	sort hosts-all | uniq > /etc/hosts


