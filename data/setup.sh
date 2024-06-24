echo Instalando Ansible

# caso o comando falhe, checar 'https://askubuntu.com/questions/1123177/sudo-add-apt-repository-hangs'
sudo add-apt-repository --yes --update ppa:ansible/ansible
if [ $? != 0 ]
then
    echo "$(tput setaf 1)Erro 'sudo add-apt-repository --yes --update ppa:ansible/ansible'.$(tput setaf 7)"
    exit 12
fi
sudo apt install ansible --yes
if [ $? != 0 ]
then
    echo "$(tput setaf 1)Erro 'sudo apt install ansible --yes'.$(tput setaf 7)"
    exit 13
fi

ansible-playbook ansible/main.yaml

