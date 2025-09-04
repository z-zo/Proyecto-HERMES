#!/bin/bash

#Author: Guillermo Rodriguez
#Description: quick script to sanitize pcap
#Requirements: tcpdump - tcpreplay
#Use: ./anon_pcap.sh <input_pcap> <output_pcap>

if [ "$#" -ne 2 ]; then
	echo: "USAGE: $0 <input_pcap> <output_pcap>"
	exit 1
fi

INPUT="$1"
OUTPUT="$2"


#Filter DNS traffic
TEMP_FILE="temp_pcap.pcap"
tcpdump -r "$INPUT" -w "$TEMP_FILE" 'port 53'

tcprewrite --seed=423 --infile "$TEMP_FILE" --outfile "$OUTPUT"\

#Remove payloads
editcap -E 1.0 "$OUTPUT" "$OUTPUT"

#Clean temp file
rm "$TEMP_FILE"

echo "[*] PCAP Sanitized: $OUTPUT"
