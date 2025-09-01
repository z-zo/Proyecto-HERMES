#!/bin/bash
set -euo pipefail
iface="${1:-wlan0}"
tshark -i "$iface" -a duration:10 -f "ip" -T fields -e ip.src | sort | uniq -c | sort -nr | head -10
