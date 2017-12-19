#!/bin/bash

# $1  The location to mount
# $2  Windows or Linux

# Example Usage:
# chmod +x  script.sh
# sudo bash script.sh sda2 windows

# Directory of the script
# (hashes.txt dumped here)
DIR="$( cd "$( dirname "BASH_SOURCE[0]}" )" && pwd)"

mkdir -p /mnt/$1/
mount /dev/$1 /mnt/$1

if [ $2 = 'windows' ] || [ $2 = 'Windows' ];then
	cd /mnt/$1/Windows/System32/config
	samdump2 SYSTEM SAM > "$DIR"/hashes.txt

# Not actually tested, probably needs modification
elif [ $2 = "linux" ] || [ $2 = "Linux" ];then
	unshadow /etc/passwd /etc/shadow > "$DIR"/hashes.txt

else
	echo "Invalid Argument for System"
fi
