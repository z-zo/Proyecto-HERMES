# 🧩 Use Cases — Netbook Red Team Lab

This section demonstrates realistic scenarios you can perform inside the lab.  
Each one focuses on a key cybersecurity skill: network analysis, reconnaissance, exploitation, logging, and automation.  
All examples are designed to be safe, reproducible, and educational.

---

## Reconnaissance with Nmap

```bash
nmap -sV -p- 172.17.0.0/24
```
172.17.0.0/24 is Docker’s internal subnet, so we should see hoy services up  

<img width="1129" height="334" alt="image" src="https://github.com/user-attachments/assets/b2c7a5b6-e1e9-4bd2-b76d-3649a574aa5e"/>

"2222/tcp open  ssh..." is the port we gave cowrie.  

We know 3000/tcp is Juice Shop but nmap couldn't recognize the servie, BUT

<img width="991" height="313" alt="image" src="https://github.com/user-attachments/assets/a9d44a72-c1dc-454e-bc6d-a959186c3aa0" />

Here we can read it from the fingerprint.
