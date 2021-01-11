#!/bin/bash

source /vagrant/provision/vars.sh

BASEDIR='/vagrant/files/database'

usersADD;

sudo cp "${BASEDIR}/hosts" /etc/hosts
sudo cp "${BASEDIR}/hostname" /etc/hostname
sudo cp "${BASEDIR}/ifcfg-enp0s3" /etc/sysconfig/network-scripts/ifcfg-enp0s3 
sudo cp "${BASEDIR}/ifcfg-enp0s8" /etc/sysconfig/network-scripts/ifcfg-enp0s8
sudo cp "${BASEDIR}/98_4linux" /etc/sudoers.d/98_4linux
sudo cp "${BASEDIR}/selinux" /etc/sysconfig/selinux

sudo systemctl disable firewalld
