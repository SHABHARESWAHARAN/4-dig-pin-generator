#!/bin/bash

clear
echo "4-dig Pin generator"
echo
echo "Date: $(date)"
echo "Location: $(pwd)"
echo
read -p "Do you want to generate 4-dig pin from 0000 to 9999 [Y/N]: " choice
if [[ "$choice" == "Y" || "$choice" == "y" ]] ; then
a="0"
b="0"
c="0"
d="0"
echo "Task running..."
while :
do
cat >> "4-dig Pin.txt" << EOF
$a$b$c$d
EOF
d=$(( "$d" + 1 ))
if [[ "$d" == "10" ]]; then
d="0"
c=$(( "$c" + 1 ))
fi

if [[ "$c" == "10" ]]; then
d="0"
c="0"
b=$(( "$b" + 1 ))
fi

if [[ "$b" == "10" ]]; then
d="0"
c="0"
b="0"
a=$(( "$a" + 1 ))
fi

if [[ "$a" == "10" ]]; then
clear
echo "Task Completed"
sleep 7
exit 1
fi

done
elif [[ "$choice" == "N" || "$choice" == "n" ]] ; then
echo "Thanks for conformation"
sleep 2
exit 1

else
echo "Invalid input"
sleep 3
exit 1
fi
