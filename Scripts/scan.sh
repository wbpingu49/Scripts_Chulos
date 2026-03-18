#!/bin/bash

arp-scan -I eth0 --localnet | grep -v "Interface" | grep -v "Starting" | grep -v "packets" | grep -v "Ending" | awk '{print $1}' | tr -d ' ' > ips.txt

while read -r linea; do

	echo "EScaneadno con nmap la ip: $linea"
	nmap -p- -sS -sC -sV --min-rate=5000 -n -Pn $linea -oN "escaneo_$linea"

done < ips.txt
rm ips.txt
