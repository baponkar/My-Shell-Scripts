#This script find the name of all users in this machine


sudo gawk -F: '{print $1}' /etc/shadow 
