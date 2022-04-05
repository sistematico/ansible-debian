#!/usr/bin/env bash

source $HOME/.keys/vars
ansible-playbook -i hosts -l $1 $2.yml