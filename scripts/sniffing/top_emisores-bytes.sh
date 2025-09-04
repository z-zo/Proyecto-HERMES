#!/bin/bash
set -euo pipefail
iface="${1:-wlan0}"
dur="${2:-20}"
out="${3:-data/reports/top_emisores_bytes.csv}"

#Creamos el directorio por si no exite (tmb los parents)
mkdir -p "$(dirname "$out")"

tshark -i "$iface" -a duration:"$dur" -f "ip" -T fields -e ip.src -e frame.len \
| awk 'NF>=2 {bytes[$1]+=$2; pkts[$1]++} END{for (ip in pkts) print ip, pkts[ip], bytes[ip]}' \
| sort -k3,3nr \
| awk 'BEGIN{print "ip,paquetes,bytes"} {print $1","$2","$3}' > "$out"

echo "Reporte generado:" $out

