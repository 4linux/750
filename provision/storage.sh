#!/bin/bash

source /vagrant/provision/vars.sh

BASEDIR='/vagrant/files/storage'

usersADD;

sudo cp "${BASEDIR}/hosts" /etc/hosts
sudo cp "${BASEDIR}/hostname" /etc/hostname
sudo cp "${BASEDIR}/ifcfg-enp0s3" /etc/sysconfig/network-scripts/ifcfg-enp0s3
sudo cp "${BASEDIR}/ifcfg-enp0s8" /etc/sysconfig/network-scripts/ifcfg-enp0s8
sudo cp "${BASEDIR}/98_4linux" /etc/sudoers.d/98_4linux
sudo cp "${BASEDIR}/selinux" /etc/sysconfig/selinux
sudo cp "${BASEDIR}/add-to-groups.sh" /opt/add-to-groups.sh
sudo cp "${BASEDIR}/add-users.sh" /opt/add-users.sh
sudo cp "${BASEDIR}/backup_logs.sh" /opt/backup_logs.sh
sudo cp "${BASEDIR}/case-script.sh" /opt/case-script.sh
sudo cp "${BASEDIR}/copy-umask.sh" /opt/copy-umask.sh
sudo cp "${BASEDIR}/for-script.sh" /opt/for-script.sh
sudo cp "${BASEDIR}/function-script.sh" /opt/function-script.sh
sudo cp "${BASEDIR}/if-script.sh" /opt/if-script.sh
sudo cp "${BASEDIR}/web_backup_system.sh" /opt/web_backup_system.sh
sudo cp "${BASEDIR}/while-test.sh" /opt/while-test.sh

sudo systemctl disable firewalld

sudo cp -r "${BASEDIR}/pacotes" /opt/pacotes
