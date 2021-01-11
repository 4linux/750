#!/bin/bash

source /vagrant/provision/vars.sh

BASEDIR='/vagrant/files/docker'

usersADD;

sudo cp "${BASEDIR}/hosts" /etc/hosts
sudo cp "${BASEDIR}/hostname" /etc/hostname
sudo cp "${BASEDIR}/98_4linux" /etc/sudoers.d/98_4linux
sudo cp "${BASEDIR}/interfaces" /etc/network/interfaces
sudo cp -r "${BASEDIR}/4450" /opt/4450
sudo cp "${BASEDIR}/Dockerfile" /opt/Dockerfile
sudo cp -r "${BASEDIR}/vagrant_2.2.9_x86_64.deb" /opt/vagrant_2.2.9_x86_64.deb

sudo apt-get update
# sudo apt-get install docker-ce docker-ce-cli containerd.io
apt-get install -y docker.io
#Gerar a image docker ubuntu-ssh usando o arquivo /opt/Dockerfile
sudo docker image build -t ubuntu-ssh /opt
# Criar a rede dexterlan no Docker
sudo docker network create --driver bridge --subnet 172.18.0.0/16 dexterlan
