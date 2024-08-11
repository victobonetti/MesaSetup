#!/bin/bash

echo Instalando Ansible
apt-get update
add-apt-repository --yes --update ppa:ansible/ansible
if [ $? != 0 ]
then
    echo "$(tput setaf 1)Erro 'add-apt-repository --yes --update ppa:ansible/ansible'.$(tput setaf 7)"
    exit 12
fi
apt install ansible --yes
if [ $? != 0 ]
then
    echo "$(tput setaf 1)Erro 'apt install ansible --yes'.$(tput setaf 7)"
    exit 13
fi
ansible-playbook ansible/main.yaml