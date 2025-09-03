# Proyecto-HERMES  
**Hardware-based Environment for Research, Monitoring, and Ethical Security**

HERMES es mi proyecto personal para convertir una **netbook Samsung NP-NC110** en una **estación de ciberseguridad ligera**.  
Incluye herramientas de **network sniffing**, **honeypot**, **monitoring** y otras funciones para practicar y aprender de forma ética sobre seguridad informática.

---

## Objetivos del proyecto
- Montar un **laboratorio de ciberseguridad** funcional en hardware de bajos recursos.
- Integrar herramientas de **red, defensa y detección** para entornos de práctica.
- Documentar cada paso del proceso, incluyendo errores, soluciones y aprendizajes.
- Compartir guías reutilizables para otros que quieran replicar el proyecto.

---

## Herramientas y tecnologías
- **Sistema operativo**: Linux ligero (Xubuntu / Debian minimal / Arch + i3wm).
- **Sniffing**: `tcpdump`, `Wireshark`, `tshark`.
- **Honeypot**: `Cowrie`, `Dionaea` o `Honeyd`.
- **Monitoring**: `Grafana` + `Prometheus` / `ELK Stack` (según recursos).
- **Automatización**: Scripts Bash / Python para parsing y alertas.
- **Seguridad**: `iptables`, `fail2ban`, hardening básico de Linux.

---

## Fases del proyecto
1. **Preparación del hardware**
   - Limpieza y optimización de la netbook.
   - Instalación de SO ligero.
2. **Configuración de red**
   - IP fija, segmentación de laboratorio, reglas de firewall.
3. **Implementación de sniffing**
   - Captura de tráfico con filtros y guardado en PCAP.
4. **Honeypot**
   - Configuración y logging de actividad.
5. **Monitoring & Dashboard**
   - Visualización de logs en tiempo real.
6. **Automatización**
   - Scripts para generar reportes y alertas.
7. **Documentación y conclusiones**
   - Lo que funcionó, problemas encontrados, mejoras futuras.

---

## Disclaimer
Este laboratorio se utiliza únicamente en **entornos controlados** y con **permiso explícito**.  
No debe emplearse en redes o sistemas ajenos.

---

> *"Al final son solo ceros y unos."*
