#!/bin/bash

echo "CPU AND MEMORY RESOURCES -------------------------------"
loadav=$(uptime | awk '{print($8,  $9,  $10)}')
fram=$(free -m | grep Mem | awk '{print($4)}')
echo "CPU Load Average: ${loadav}   Free RAM: ${fram} MB"
echo -e "\nNETWORK CONNECTIONS--------------------------------"
lobr=$(cat /sys/class/net/lo/statistics/rx_bytes)
lobt=$(cat /sys/class/net/lo/statistics/tx_bytes)
enbr=$(cat /sys/class/net/enp0s3/statistics/rx_bytes)
enbt=$(cat /sys/class/net/enp0s3/statistics/tx_bytes)
internetmed=$(ping -c 1 google.com | grep -e "packet loss" | cut -d, -f3 | cut -b 2)
if [ $internetmed -eq 0 ]; then
    internet="Yes"
else
    internet="No"
fi
echo "lo Bytes Received: $lobr     lo Bytes Transmitted: $lobt"
echo "enp0s3 Bytes Received: $enbr    enp0s3 Bytes Transmitted: $enbt"
echo "Internet Connectivity: $internet"
echo -e "\nACCOUNT INFORMATION -------------------------------------"
usernum=$(cat /etc/passwd | wc -l)
let "usernum = usernum - 1"
actnum=$(who | wc -l)
echo "Total Users: ${usernum}   Number Active: $actnum"
echo "Shells:"
nolognum=$(cat /etc/passwd | grep nologin | wc -l)
echo "/sbin/nologin: ${nolognum}"
bashnum=$(cat /etc/passwd | grep bash | wc -l)
echo "/bin/bash: ${bashnum}"
falsenum=$(cat /etc/passwd | grep false | wc -l)
echo "/bin/false: ${falsenum}"
echo -e "\nFILESYSTEM INFORMATION ----------------------------------"
filenum=$(find / -type f | wc -l)
echo "Total Number of Files: ${filenum}"
dirnum=$(find / -type d | wc -l)
echo "Total Number of Directories: ${dirnum}"