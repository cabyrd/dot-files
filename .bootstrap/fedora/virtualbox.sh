#!/usr/bin/env bash

# -----------------------------------------------------------------------------
# Enable virtualbox package repository
# -----------------------------------------------------------------------------
pushd $PWD

if [ ! -f /etc/yum.repos.d/virtualbox.repo ]; then
  cd /etc/yum.repos.d
  sudo wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
fi
sudo dnf update -y
sudo dnf install -y kernel-devel kernel-headers dkms VirtualBox-6.1
sudo /usr/lib/virtualbox/vboxdrv.sh setup

popd
