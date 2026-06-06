#!/bin/bash

get_user_info()
{
who | wc -l > nuserasa62.txt
echo "--> check nuserasa62.txt"
}

get_disk_space()
{
df -h / | awk 'NR==2 {print $5}' > dskspaceasa62.txt
echo "--> check dskspaceasa62.txt"
}

echo "==========================="
echo "Name : Avika Sawhney"
echo "ID: 300386862"
echo "=========================="

while true; do
echo "MENU"
echo "1. Display user Info"
echo "2. Display disk Space"
echo "3. exit"
read -p "Enter your choice [1-3]: " choice

case $choice in
1) 
get_user_info 2> /dev/null
cat nuserasa62.txt
;;
2)
get_disk_space 2> /dev/null
cat dskspaceasa62.txt
;;
3)
exit 0
;;
*)
echo "invalid output"
;;
esac
done
