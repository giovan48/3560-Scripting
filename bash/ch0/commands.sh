#!/bin/bash
#CSIS 3560 Lab 0: Installing Environments
#In here I will have the commands to run lab0, 
#also include commands for ubuntu, kali linux and windows
##Links to resources
#https://www.commandlinewizardry.com/resources
#https://linuxhandbook.com/history-command-timestamp/

#Main commands for this lab0
#1- users (access and privileges) and groups
    #Create username in Compliance with SGL
        sudo adduser gal02 # Create a new user named gal02
        cat /etc/passwd | grep gal02 # Verify that the user was created successfully
    #Add user to sudo group (root/sudo access)
        sudo usermod -aG sudo gal02 # Add the user gal02 to the sudo group
        groups gal02 # Verify that the user is now part of the sudo group
    #verify sudo access
        groups gal02 # Check the groups for user gal02 to confirm sudo access
        sudo -l # List the allowed and forbidden commands for the user gal02
        su - gal02 # Switch to the user gal02 to test sudo access
        sudo -l # Lists the sudo permissions assigned to the current user.
#2- Set bidirectional in virtualBox
    #go to settings of the virtual machine
    #go to Features
    #go to Shared Clipboard and select Bidirectional
    #go to Drag and Drop and select Bidirectional
#3- Set Network adpater to Bridged Adapter
    #go to settings of the virtual machine
    #go to Network
    #select Adapter 1
    #select Bridged Adapter from the dropdown menu 
#4- Do not update/upgrade the VMs
#5- Add timestamps to history
#https://linuxhandbook.com/history-command-timestamp/
    #edit the .bashrc file in the user home directory
        nano ~/.bashrc # Open the .bashrc file in a text editor
    #add the following line to the end of the .bashrc file to set the HIST
        export HISTTIMEFORMAT="%F %T " # Add this line to the end of the .bashrc file to set the HISTTIMEFORMAT variable
    #save and exit the text editor
    #reload the .bashrc file to apply the changes
        # source ~/.bashrc # Reload the .bashrc file to apply the changes
    #verify that timestamps are now included in the history output
        history # Display the command history with timestamps
        history > ubuntulab0gal02.txt # Export the command history with timestamps to a file named ubuntulab0gal02.txt in the current directory
#6- Set up shared folder in virtualBox
    #go to settings of the virtual machine
    #go to Shared Folders
    #click on the + icon to add a new shared folder
    #select the folder path on your host machine that you want to share
        #C:\Users\300394602\sharedgal02 # Example path to the shared folder on the host machine
    #give the folder a name (e.g., sharedgal02)
    #check the "Auto-mount" option and click OK
    #check Make machine-permanent option and click OK
    #mount the shared folder in the home directory of the ubuntu VM
        #/home/gal02/sharedgal02 # Example path to the shared folder in the VM
    #mount the shared folder in the home user directory (if VirtualBox option is not available)
        mkdir -p /home/gal02/sharedgal02 # Create the shared folder directory in the home directory of the VM
        mount | grep vboxsf # Verify that the shared folder is mounted
        sudo mount -t vboxsf sharedgal02 /home/gal02/sharedgal02 # Mount the shared folder to the specified directory in the VM
        ls /home/gal02/sharedgal02 # List the contents of the shared folder to verify that it is accessible