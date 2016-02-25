# Linux

#### Instalar docker

    $ sudo sh -c "echo deb https://get.docker.com/ubuntu docker main\ > /etc/apt/sources.list.d/docker.list"
    $ sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
    $ sudo apt-get update
    $ sudo apt-get install lxc-docker
    $ sudo groupadd docker
    $ sudo gpasswd -a ${USER} docker
    $ sudo service docker restart

#### Instalar docker-compose
     $ curl -L https://github.com/docker/compose/releases/download/1.6.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
     $ chmod +x /usr/local/bin/docker-compose

#### Probar la instalación
    $ docker-compose --version
    docker-compose version 1.6.0, build d99cad6

#### Construir las imágenes

     $ docker-compose up


# Windows

#### Ejecutar Docker Toolbox

    1. https://docs.docker.com/engine/installation/windows/
    2. Abrir la Docker Quickstart Terminal
    3. docker-compose up
    
#### Obtener la IP de la VM
    $ docker-machine ip default
    192.168.99.100
