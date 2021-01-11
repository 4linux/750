#!/bin/bash

source /vagrant/provision/vars.sh

BASEDIR='/vagrant/files/lab-gamification'

usersADD;

sudo cp "${BASEDIR}/hosts" /etc/hosts
sudo cp "${BASEDIR}/hostname" /etc/hostname
sudo cp "${BASEDIR}/ifcfg-enp0s3" /etc/sysconfig/network-scripts/ifcfg-enp0s3
sudo cp "${BASEDIR}/ifcfg-enp0s8" /etc/sysconfig/network-scripts/ifcfg-enp0s8
sudo cp "${BASEDIR}/98_4linux" /etc/sudoers.d/98_4linux
sudo cp "${BASEDIR}/selinux" /etc/sysconfig/selinux
sudo cp "${BASEDIR}/Dockerfile" /opt/Dockerfile
sudo cp "${BASEDIR}/Vagrantfile" /home/suporte/Vagrantfile
sudo cp "${BASEDIR}/vagrant_2.2.9_x86_64.rpm" /opt/vagrant_2.2.9_x86_64.rpm
sudo cp "${BASEDIR}/inspec-2.2.70-1.el7.x86_64.rpm" /opt/inspec-2.2.70-1.el7.x86_64.rpm 
sudo cp "${BASEDIR}/snoopy-install.sh" /opt/snoopy-install.sh
sudo cp "${BASEDIR}/lab01" /usr/sbin/lab01
sudo cp "${BASEDIR}/lab02" /usr/sbin/lab02
sudo cp "${BASEDIR}/lab03" /usr/sbin/lab03
sudo cp "${BASEDIR}/lab04" /usr/sbin/lab04
sudo cp "${BASEDIR}/lab05" /usr/sbin/lab05
sudo cp "${BASEDIR}/lab06" /usr/sbin/lab06
sudo cp "${BASEDIR}/lab07" /usr/sbin/lab07
sudo cp "${BASEDIR}/lab08" /usr/sbin/lab08
sudo cp "${BASEDIR}/lab09" /usr/sbin/lab09
sudo cp "${BASEDIR}/lab10" /usr/sbin/lab10
sudo cp "${BASEDIR}/lab11" /usr/sbin/lab11
sudo cp "${BASEDIR}/lab12" /usr/sbin/lab12
sudo cp "${BASEDIR}/limpar-lab" /usr/sbin/limpar-lab
sudo cp -r "${BASEDIR}/pacotes" /opt/pacotes
chmod 755 /usr/sbin/lab01
chmod 755 /usr/sbin/lab02
chmod 755 /usr/sbin/lab03
chmod 755 /usr/sbin/lab04
chmod 755 /usr/sbin/lab05
chmod 755 /usr/sbin/lab06
chmod 755 /usr/sbin/lab07
chmod 755 /usr/sbin/lab08
chmod 755 /usr/sbin/lab09
chmod 755 /usr/sbin/lab10
chmod 755 /usr/sbin/lab11
chmod 755 /usr/sbin/lab12
chmod 755 /usr/sbin/limpar-lab
chmod 755 /opt/snoopy-install.sh
#Deixar o Firewalld desativado

#Discos:

#Adicionar + 2 discos de 20GB
sudo systemctl disable firewalld

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

sudo yum repolist

sudo yum install -y docker-ce docker-ce-cli containerd.io

systemctl enable docker && systemctl start docker
#* Gerar a image docker ubuntu-ssh usando o arquivo /opt/Dockerfile

sudo docker image build -t ubuntu-ssh /opt

#* Criar a rede dexterlan no Docker

sudo docker network create --driver bridge --subnet 172.18.0.0/16 dexterlan
