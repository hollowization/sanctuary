# Workbench

This repository contains configuration and documentation for my personal workbench.

## Repository layout

| Path | Contents |
| --- | --- |
| `services/x64/` | Proxmox guest inventory and selected service configurations. |
| `terraform/` | Proxmox resources and reusable infrastructure modules. |
| `ansible/` | Inventories, playbooks, and host roles. |
| `cloud/` | AWS, Azure, and Google Cloud configurations. |
| `cyber/` | Defensive tooling, CTF work, incident analysis, and vulnerability research. |

## Hardware

| Host | Role | Main hardware |
| --- | --- | --- |
| `pve` | Proxmox VE | Intel Core i3-10100F, 12 GB RAM, GTX 1050 Ti, 512 GB NVMe. |
| `openmediavault` | NAS | Intel Celeron N2830, 2 GB RAM, 500 GB SATA disk. |


## x64 Proxmox guests

| ID | Guest | Type | Directory |
| ---: | --- | --- | --- |
| 100 | Home Assistant | LXC | `services/x64/homeassistant/` |
| 101 | Mosquitto | LXC | `services/x64/mosquitto/` |
| 104 | Monitoring | LXC | `services/x64/monitoring/` |
| 106 | Wazuh | LXC | `services/x64/wazuh/` |
| 108 | ESPHome | LXC | `services/x64/esphome/` |
| 200 | OPNsense | QEMU VM | `services/x64/opnsense/` |
| 300 | Parrot OS | QEMU VM | `services/x64/parrot/` |
| 301 | Malware Analysys Windows 10 Sandbox | QEMU VM | `services/x64/sandbox/` |
| 400 | Active Directory Domain Controller | QEMU VM | `services/x64/dc/` |
| 401 | Active Directory Server 1 | QEMU VM | `services/x64/sv1/` |
| 402 | Active Directory Server 2 | QEMU VM | `services/x64/sv2/` |
| 403 | Active Directory Client | QEMU VM | `services/x64/client/` |

See the [x64 inventory](services/x64/README.md) for tracked guest and application files. VM definitions are Proxmox configuration, not Docker Compose services.

## Starting a Compose stack

Run Compose from the service directory on the system that hosts the application:

```sh
cd services/x64/service
docker compose up -d
```

Use the same approach for other tracked stacks. For Immich, create a local `.env` from `.env.example` and set the required storage and database values. Do not commit secrets or populated environment files.

