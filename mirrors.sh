#mise a jour des mirroirs avec reflector
sudo reflector --country 'France' --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist

#mise a jour des depots
trizen -Syy
default="Y"
read -e -p 'update systeme (Y/n):' yes
yes="{yes:-$default}"
if [ $yes != "n" ]
then
	trizen -Su
fi
