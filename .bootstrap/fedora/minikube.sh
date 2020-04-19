#!/usr/bin/env bash

# -----------------------------------------------------------------------------
# Enable k8s repo and install kubectl and minikube
# -----------------------------------------------------------------------------

pushd $PWD

sudo dnf update -y
sudo dnf install -y kubectl

#Install minikube
if which minikube; then
  echo "minikube is already installed"
else
  cd /tmp
  wget https://github.com/kubernetes/minikube/releases/download/v1.9.2/minikube-1.9.2-0.x86_64.rpm
  sudo dnf install -y ./minikube-1.9.2-0.x86_64.rpm
  sudo rm /tmp/minikube-1.9.2-0.x86_64.rpm
fi

popd
