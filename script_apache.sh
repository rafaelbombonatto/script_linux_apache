#!/bin/bash

echo "Atualizando Servidor"

apt update -y
apt upgrade -y

echo "Instalando Servidor Apache"

apt install apache2 -y

echo "Instalando  Unzip"

apt install unzip -y

echo "Baixando arquivo ZIP no tmp"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o arquivo"

unzip main.zip

echo "Copiando os arquivos para o diretorio padrao do apache"

cd linux-site-dio-main
cp -R * /var/www/html

echo "Script Finalizado"  




