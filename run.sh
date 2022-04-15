#!/usr/bin/env bash

[ "$#" -lt 2 ] && echo "Número errado de argumentos." && exit
[ ! -f *-$2.yml ] && echo "O playbook não existe." && exit

source $HOME/.keys/vars

ansible-playbook -i $1, *-$2.yml