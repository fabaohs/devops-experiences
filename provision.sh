#!/usr/bin/env bash
echo "Instalando Apache e executando setup..."

sudo apt update

sudo apt install -y apache2

cp -r /vagrant/html/* /var/www/html