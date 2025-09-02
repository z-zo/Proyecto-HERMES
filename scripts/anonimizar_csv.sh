#!/bin/bash

set -euo pipefail

# Inicio las variables
in="${1:?CSV entrada}"
out="${2:?CSV salida}"
salt="${3:-hermes-salt}"

# Funcion para crear el hash de ip pero cortado
hash_ip() {
	local s="$1$2" 
	printf "%s" "$s" | sha256sum | cut -c1-12
}

# Leemos el csv de entrada y traduce(anonimiza) la primer columna con la funcion hash_ip
{
	read -r header
	echo "ip_hash,${header#*,}"
	while IFS="," read -r ip col2 col3; do
		h=$(hash_ip "$ip" "$salt")
		echo "$h,$col2,$col3"
	done
} < "$in" > "$out"

echo "CSV anonimizado: $out"
