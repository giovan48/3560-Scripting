#!/bin/bash
file="exposuregal02.txt"
current_user=$(whoami)
echo "Current username: $current_user" > "$file"
host=$(hostname)
echo "Hostname: $host" >> "$file"
local_ip=$(ifconfig | grep -E -o 'inet [0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' | cut -d ' ' -f2 | grep -v '127.0.0.1')
echo "Local Ip: $local_ip" >> "$file"
ping -c 4 8.8.8.8 | grep -E '^64' >> "$file"
num_p=$(ps -ax | wc -l)
echo "Number of running process: $num_p" >> "$file"
num_p_sys=$(ps -ax | grep -E 'systemd' | wc -l)
echo "Number of systemd process: $num_p_sys" >> "$file"
first_shell=$(cat /etc/passwd | grep -E 'gal02' | cut -d ':' -f7)
echo "First shell: $first_shell" >> "$file"
conf_files=$(find /etc/ -type f 2> /dev/null | grep -E '(\.conf)$' | wc -l)
echo "Number of files ending in .conf: $conf_files" >> "$file"
match_sh=$(find /home/gal02 -type f -name "*.sh")
echo "Match paths .sh: $match_sh" >> "$file"
cat $file
