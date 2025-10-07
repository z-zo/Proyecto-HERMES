# Proyecto HERMES: Red Team Netbook Lab                                                                              
                                                                                                                           

**Hardware-based Environment for Research, Monitoring, and Ethical Security**

Turn your old Samsung netbook (**netbook Samsung NP-NC110**) into a portable Red Team / offensive security workstation. The repository is designed as a reproducible, documented project you can show on GitHub and LinkedIn: automated deployment, lightweight services, and clear demo material.


---

## Goals

- Convert the netbook into a lightweight, portable test station (sniffer, lightweight honeypots, vulnerable targets, deploy scripts).

- Automate reproducible deployments with scripts and Ansible where appropriate.

- Produce clear documentation (architecture, installation, deployment, use cases, tests).

- Include ethics and scope guidelines to avoid abuse.

---

## Herramientas y tecnologías
![AntiX Linux](https://img.shields.io/badge/AntiX-Linux-%232679D0?style=flat&logo=linux&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-ready-%230db7ed?style=flat&logo=docker&logoColor=white)
![LXD](https://img.shields.io/badge/LXD-optional-%23777BB4?style=flat)
![Cowrie](https://img.shields.io/badge/Cowrie-honeypot-%23FF6F61?style=flat)
![Conpot](https://img.shields.io/badge/Conpot-ICS-%233B82C4?style=flat)
![DVWA](https://img.shields.io/badge/DVWA-vulnerable-%23F1C40F?style=flat)
![Juice Shop](https://img.shields.io/badge/OWASP-Juice_Shop-%23E34F26?style=flat)
![tcpdump](https://img.shields.io/badge/tcpdump-%23007ACC?style=flat)
![tshark](https://img.shields.io/badge/tshark-%230078D6?style=flat&logo=wireshark&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-%232F4F4F?style=flat&logo=gnu-bash&logoColor=white)
![Python](https://img.shields.io/badge/Python-click%2Fargparse-%233776AB?style=flat&logo=python&logoColor=white)
![Ansible](https://img.shields.io/badge/Ansible-%23EE0000?style=flat&logo=ansible&logoColor=white)
![iptables](https://img.shields.io/badge/iptables-%233F3F3F?style=flat)
![dnsmasq](https://img.shields.io/badge/dnsmasq-%23998800?style=flat)
![hostapd](https://img.shields.io/badge/hostapd-%233E6B9C?style=flat)
![ELK](https://img.shields.io/badge/ELK-stack-%23F04E31?style=flat&logo=elastic&logoColor=white)
![Graylog](https://img.shields.io/badge/Graylog-%23007A87?style=flat)
![Filebeat](https://img.shields.io/badge/Filebeat-%2300358F?style=flat&logo=elastic&logoColor=white)
![Kibana](https://img.shields.io/badge/Kibana-%23FFCC00?style=flat&logo=kibana&logoColor=black)
![tmux](https://img.shields.io/badge/tmux-%23333333?style=flat)
![SSH](https://img.shields.io/badge/SSH-%23007ACC?style=flat&logo=ssh&logoColor=white)
![autossh](https://img.shields.io/badge/autossh-%23777BB4?style=flat)


---

## Repository Structure

├─ 01_Summary.md
├─ 02_Architecture.md
├─ 03_Installation.md
├─ 04_Automated_Deployment.md
├─ 05_Use_Cases.md
├─ 06_Tests.md
├─ 07_Security_Considerations.md
├─ scripts/
├─ ansible/
└─ diagrams/

---

## Disclaimer
Este laboratorio se utiliza únicamente en **entornos controlados** y con **permiso explícito**.  
No debe emplearse en redes o sistemas ajenos.

---

> *"Al final son solo ceros y unos."*
