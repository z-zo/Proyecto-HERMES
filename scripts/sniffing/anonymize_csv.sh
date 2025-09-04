#!/bin/bash
#Script: anonymize_csv.sh
#Author: Guillermo Rodriguez
#Description: encrypt using sha256sum and cut IP from reports to anonymize private information.
#Use: ./anonymize_csv.sh input.csv output.sh

set -euo pipefail

# Initialize variables
in="${1:?CSV input}"<
out="${2:?CSV output}"
salt="${3:-hermes-salt}"

# Func that translates and cuts the IPs
hash_ip() {
	local s="$1$2" 
	printf "%s" "$s" | sha256sum | cut -c1-12
}

# Read csv reports and use hash_ip() on first column (IPs)
{
	read -r header
	echo "ip_hash,${header#*,}"
	while IFS="," read -r ip col2 col3; do
		h=$(hash_ip "$ip" "$salt")
		echo "$h,$col2,$col3"
	done
} < "$in" > "$out"

echo "Anonymized CSV: $out"
