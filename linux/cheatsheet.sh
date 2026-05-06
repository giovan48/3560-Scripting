#Create user
sudo adduser gal02

#Add user to sudo group
sudo usermod -aG sudo gal02

#timestampt
#sharedfolder ubuntu
#sharedfolder kali
#sharedfolder windows
#mount in home directory
#sudo mount -t vboxsf sharedgal02 /mnt

include code for this
redirect history output to a file named `linuxlab0gal02.txt` in the current directory.

| Requirement                  | Your Setup                     | Status |
| ---------------------------- | ------------------------------ | ------ |
| Add timestamps to history    | `HISTTIMEFORMAT="%F %T "`      | ✅      |
| Edit `.bashrc` in user home  | done in `/home/gal02/.bashrc`  | ✅      |
| Timestamps always added      | verified with `history` output | ✅      |
| Export history with redirect | `history > linuxlab0gal02.txt` | ✅      |
| Use SGL naming               | `linuxlab0gal02.txt`           | ✅      |

