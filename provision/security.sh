#!/bin/bash

source /vagrant/provision/vars.sh 

BASEDIR='/vagrant/files/security'

usersADD;

sudo cp "${BASEDIR}/hosts" /etc/hosts
sudo cp "${BASEDIR}/hostname" /etc/hostname
sudo cp "${BASEDIR}/interfaces" /etc/network/interfaces
sudo cp "${BASEDIR}/98_4linux" /etc/sudoers.d/98_4linux
sudo cp -r "${BASEDIR}/pacotes/" /opt/pacotes
