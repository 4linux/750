#!/bin/bash

source /vagrant/provision/vars.sh

BASEDIR='/vagrant/files/ntp-log-server'

usersADD;

sudo cp "${BASEDIR}/hosts" /etc/hosts
sudo cp "${BASEDIR}/hostname" /etc/hostname
sudo cp "${BASEDIR}/98_4linux" /etc/sudoers.d/98_4linux
sudo cp "${BASEDIR}/interfaces" /etc/network/interfaces
sudo cp "${BASEDIR}/web_backup_system.sh" /opt/web_backup_system.sh
sudo cp "${BASEDIR}/backup_logs.sh" /opt/backup_logs.sh
