# Configurações automáticas em VPS

Playbooks para as distros: Debian, Ubuntu e RockyLinux.

### 1. Obtendo os playbooks

```shell
git clone https://github.com/sistematico/ansible-playbooks.git
cd ansible-playbooks
```
### 2. Uso

```shell
ENV1=valor1 ENV2=valor2 ./run.sh [distro] [playbook] [host]
```

*Dica: Abra o playbook para ver quais variaveis de ambiente são necessárias para cada um.*

Exemplo de Setup para Debian usando o host previmente configurado em /etc/hosts (no caso *nix*): 

```shell
PASSWD='sua_senha_root' HOSTNAME='nix' USER='lucas' ./run.sh debian setup nix
```

Exemplo de Setup para RockyLinux usando o IP 192.168.0.1: 

```shell
PASSWD='sua_senha_root' HOSTNAME='rocky' USER='lucas' ./run.sh rocky setup 192.168.0.1
```

Exemplo de instalação de um certificado CloudFlare para uma máquina usando o RockyLinux com o IP 1.1.1.1: 

```shell
SITE='dominio.com' CF_EMAIL='seu_email@gmail.com' CF_TOKEN='seu_token_cloudflare' ./run.sh rocky setup 1.1.1.1
```

### 3. Vagrant

```shell
ENV1=valor1 ENV2=valor2 ./run.sh [distro] [playbook] -v
```

*Dica: Abra o playbook para ver quais variaveis de ambiente são necessárias para cada um.*

Exemplo para RockyLinux usando o Vagrant: 

```shell
PASSWD="sua_senha_root" HOSTNAME="rocky" USER="lucas" ./run.sh rocky setup -v
```

## Créditos

- [Arch Linux](https://archlinux.org)
- [Debian](https://debian.org)
- [Ubuntu](https://ubuntu.com)
- [RockyLinux](https://rockylinux.org)
- [Ansible](https://ansible.com)

## Agradecimentos

Agradeço do fundo do meu coração a [RackNerd](https://my.racknerd.com/aff.php?aff=4400) por me fornecer uma VPS para testes.

## Contato

- lucas@archlinux.com.br

## Ajude

Se o meu trabalho foi útil de qualquer maneira, considere doar qualquer valor através do das seguintes plataformas:

[![LiberaPay](https://img.shields.io/badge/LiberaPay-gray?logo=liberapay&logoColor=white&style=flat-square)](https://liberapay.com/sistematico/donate) [![PagSeguro](https://img.shields.io/badge/PagSeguro-gray?logo=pagseguro&logoColor=white&style=flat-square)](https://pag.ae/bfxkQW) [![ko-fi](https://img.shields.io/badge/ko--fi-gray?logo=ko-fi&logoColor=white&style=flat-square)](https://ko-fi.com/K3K32RES9) [![Buy Me a Coffee](https://img.shields.io/badge/Buy_Me_a_Coffee-gray?logo=buy-me-a-coffee&logoColor=white&style=flat-square)](https://www.buymeacoffee.com/sistematico) [![Open Collective](https://img.shields.io/badge/Open_Collective-gray?logo=opencollective&logoColor=white&style=flat-square)](https://opencollective.com/sistematico) [![Patreon](https://img.shields.io/badge/Patreon-gray?logo=patreon&logoColor=white&style=flat-square)](https://patreon.com/sistematico)

![GitHub Sponsors](https://img.shields.io/github/sponsors/sistematico?label=Github%20Sponsors)