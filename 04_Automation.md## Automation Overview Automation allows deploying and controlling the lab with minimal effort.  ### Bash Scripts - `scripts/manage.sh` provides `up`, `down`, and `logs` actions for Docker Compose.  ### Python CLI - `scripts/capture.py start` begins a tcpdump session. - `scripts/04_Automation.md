## Automation Overview
Automation allows deploying and controlling the lab with minimal effort.

### Bash Scripts
- `scripts/manage.sh` provides `up`, `down`, and `logs` actions for Docker Compose.

### Python CLI
- `scripts/capture.py start` begins a tcpdump session.
- `scripts/capture.py stop` stops it gracefully :)

### Ansible Playbook
- Installs required packages and pulls Docker images.
