# Passos para Instalação

1. Entre na máquina vagrant:

    ``` powershell
        vagrant up
        vagrant ssh
    ```

2. Execute os comandos no Linux: 

    ``` bash
        sudo su
        cd /etc/mesa
        sed -i -e 's/\r$//' setup.sh
        ./setup.sh
    ```