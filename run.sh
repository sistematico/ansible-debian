#!/usr/bin/env bash

# https://github.com/paramiko/paramiko/issues/2038#issuecomment-1112740435
sudo pip install fabric 1> /dev/null
sudo pip uninstall -y cryptography 1> /dev/null # uninstall 37.0.0
sudo pip install cryptography==36.0.2 1> /dev/null

[ "$1" == "-h" ] && echo "Uso: $(basename $0) [distro] [playbook] [host]" && exit
[ "$#" -lt 2 ] && echo "Número errado de argumentos.(use -h para ver as opções)" && exit
[ ! -f $1/*-$2.yml ] && echo "O playbook não existe." && exit

source $HOME/.keys/vars

if [ "$3" == "-v" ]; then
    cd $1
    if ! vagrant status | grep -q 'running'; then
        vagrant up
    fi
    ln -sf *-"$2".yml playbook.yml
    vagrant provision
else
    ansible-playbook -i "$3", "$1"/*-"$2".yml
fi