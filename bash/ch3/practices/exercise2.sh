#!/bin/bash
#Task1
#!/bin/bash

# ==========================================
# CSIS 3560 - Chapter 3 Regex Practice
# ==========================================

echo "=================================="
echo "Task 1 - May + Failed/Accepted + IP"
echo "=================================="

grep -E -n -i '^May .*(failed|accepted).*([0-9]{1,3}\.){3}[0-9]{1,3}$' cyberlog2.txt

echo
echo "=================================="
echo "Task 2 - admin or guest usernames"
echo "=================================="

grep -E -n '\b(admin|guest)\b' cyberlog2.txt

echo
echo "=================================="
echo "Task 3 - Same IP appears twice"
echo "=================================="

grep -E -n '(([0-9]{1,3}\.){3}[0-9]{1,3}).*\1' cyberlog2.txt

echo
echo "=================================="
echo "Task 4 - Four or more hex bytes"
echo "=================================="

grep -E -n '(0x[0-9a-fA-F]{2} ?){4,}' cyberlog2.txt

echo
echo "=================================="
echo "Task 5 - sshd service with PID"
echo "=================================="

grep -E -n '^sshd\[[0-9]{1,}\]' cyberlog2.txt
