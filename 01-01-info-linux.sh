#!/bin/bash
echo "The current system is $(uname)"
echo "There is the .sh files is this directory: "
ls -la *.sh
echo "There is the start and the end of passwd: "
head -n 3 /etc/passwd
echo "..."
tail -n 3 /etc/passwd | sort -n -t ':' -k3
echo "The file fstab contains $(wc -l < /etc/fstab) lines" #Or cat /etc/fstab | wc -l
if [[ $UID -eq 0 ]];
then
	echo "Root isconnected ($UID)"
else
	echo "Root isn't connected ($UID)"
fi
echo "There is the file start by c ou r:"
ls /etc | grep ^[c] && ls /etc | grep ^[r]

