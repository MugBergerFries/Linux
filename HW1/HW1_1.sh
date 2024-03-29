#!/bin/bash
passed=1
while [ $? -ne 151 ]
do
  df -H | grep -E '/$|/boot$' | awk '{ print $6 " " $5 }' | while read line;
    do
    disk=$(echo $line | awk '{ print $1 }')
    per=$(echo $line | awk '{ print $2 }' | tr -d %)
    if [ $per -ge 80 ]; then
      echo "$disk is above the threshold. Currently at $per% usage" |
      mail -s '$disk at $per % usage' root@localhost.localdomain
      echo "$disk is above the threshold. Currently at $per% usage"
      echo "Email sent"
      exit 151
    fi
  done
done