# Architecture

    Internet
        |
    [Host: AntiX]
        |
 ┌───────────────┐
 │ Docker Bridge │
 └──────┬────────┘
    │        │
[Juice] [Cowrie]
WebApp Honeypot

--

**Components**
- **Host:** AntiX Linux (control, monitoring)
- **Containers:** Docker for isolation
- **Targets:** Juice Shop
- **Honeypots:** Cowrie
- **Sniffer:** tcpdump/tshark on host

**Notes**
All services run isolated inside Docker. Network captures and logs remain local.
