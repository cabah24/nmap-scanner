#!/bin/bash

while read host; do
  echo "Escaneando $host ..."
  nmap -p 22,80,443 -T4 $host -oN scan_$host.txt
done < hosts.txt
