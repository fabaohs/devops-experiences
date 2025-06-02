#!/bin/sh

echo "Updating apt"
sudo apt update

echo "Installing software-properties-common"
sudo apt install software-properties-common

echo "Adding ansible PPA"
sudo add-apt-repository --yes --update ppa:ansible/ansible

echo "Installing ansible"
sudo apt install -y ansible

echo "Updating /etc/hosts"
cat <<EOT > /etc/hosts
192.168.56.2 control-node
192.168.56.3 app01
192.168.56.4 db01
EOT

echo "Provisioning finished!"