# Installation — Setup Guide (copy/paste)

## Prerequisites
- Netbook with AntiX installed (or your chosen minimal distro)
- Internet access to pull images/packages
- 10 GB free disk recommended

## Quick install (Debian/AntiX derived)
```bash
# update & essentials
sudo apt update && sudo apt upgrade -y
sudo apt install -y git curl wget ca-certificates build-essential

# Docker (recommended)
sudo apt install -y docker.io
sudo systemctl enable --now docker

# Other tools
sudo apt install -y tcpdump tshark python3 python3-pip tmux dnsmasq
```
## Clone repo
git clone https://github.com/<your-user>/netbook-redteam-lab.git
cd netbook-redteam-lab
