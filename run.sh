#!/usr/bin/env bash

[ "$#" -lt 2 ] && echo "Número errado de argumentos." && exit
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
