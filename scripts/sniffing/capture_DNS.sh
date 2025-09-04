#!/bin/bash
#Script: capture_DNS.sh
#Author: Guillermo Rodriguez
#Description: Captures DNS traffic (UDP port 53) on the specified network interfase. Save report as .pcap with date and time.
#Use: ./capture_DNS.sh <interface>

#Check the interfase existence

if [ -z "$1" ]; then
	echo "USAGE: $0 <inteface>"
	exit 1
fi

Interface=$1
Date=$(date +%F_%H-%M-%S)
File="$HOME/HERMES-netlab/data/captures/dns_${Date}.pcap"

echo "[*] Starting DNS capture on interface: $Interface..."
sudo tcpdump -i "$Interface" udp port 53 -w "$File"

echo "[*] Capture Finished.File saved at: $File"
