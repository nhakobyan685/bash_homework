#!/bin/bash

#1 System information
echo "System version:"
lsb_release -a

#2 clean os system
read -p "Do you want to clean your system? (yes/no): " response

if [ "$response" = "yes" ]; then
    echo "Cleaning system..."
    sudo apt autoremove -y
    sudo apt autoclean -y
    sudo apt clean -y
    sudo apt install -f -y
fi

#3 print 1M high file 

read -p "Enter a directory name: " dirname
find $dirname -type f -size +1M -ls


#4 information disk usage
echo "Disk usage information:"
df -h



#5 hearchia folder
read -p "Enter folder " dir
echo `tree $dir`
