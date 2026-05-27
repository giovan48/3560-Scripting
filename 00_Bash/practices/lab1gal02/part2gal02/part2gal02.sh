#!/bin/bash
file="processgal02.html"
#get info
host=$(hostname)
user=$(whoami)
user_id=$(id | cut -d ' ' -f1,2)
kern=$(uname -o)
upt=$(uptime)
run_p=$(ps -ax | wc -l)
gal02_p=$(ps -aux | grep -E '^gal02' | wc -l)
uniq_u=$(ps -ax | uniq | wc -l)
tot_conf=$(find /etc -type f -name '*.conf' 2> /dev/null | wc -l)
tot_log=$(find /var/log/ -type f -name '*.log' 2> /dev/null | wc -l)
last_five=$(tail -n 5 /etc/passwd)
first_field=$(cat /etc/passwd | grep -E '^gal02' | cut -d ':' -f1)

echo "<html>" > "$file"
echo "<body>" >> "$file"
echo "<table border='1'>" >> "$file"

echo "<tr><th>item</th><th>result</th></tr>" >> "$file"
echo "<tr><td>Machine Name</td><td>"$host"</td></tr>" >> "$file"
echo "<tr><td>current User</td><td>"$user"</td></tr>" >> "$file"
echo "<tr><td>UserID/GroupID</td><td>"$user_id"</td></tr>" >> "$file"
echo "<tr><td>Kernel</td><td>"$kern"</td></tr>" >> "$file"
echo "<tr><td>Uptime</td><td>"$upt"</td></tr>" >> "$file"
echo "<tr><td>total Running Process</td><td>"$run_p"</td></tr>" >> "$file"
echo "<tr><td>gal02 total Process</td><td>"$gal02_p"</td></tr>" >> "$file"
echo "<tr><td>Unique process Owners</td><td>"$uniq_u"</td></tr>" >> "$file"
echo "<tr><td>total .conf /etc</td><td>"$tot_conf"</td></tr>" >> "$file"
echo "<tr><td>total .log / /var/log</td><td>"$tot_log"</td></tr>" >> "$file"
echo "<tr><td>Last Five lines /etc/passwd</td><td>"$last_five"</td></tr>" >> "$file"
echo "<tr><td>first Field gal02 /etc/passwd</td><td>"$first_field"</td></tr>" >> "$file"

echo "</table>" >> "$file"
echo "</body>" >> "$file"
echo "</html>" >> "$file"

echo "processgal02.html file created."
