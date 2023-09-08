#!/bin/bash

echo "atualizando o servidor ..."
apt-get update -y
apt-get upgrade -y
echo "Servidor atualizado."

echo "Instalando o apache2 ..."
apt-get install apache2 -y
echo "apache2 instalado."

echo "Instalando o unzip ..."
apt-get install unzip -y
echo "unzip instalado."

echo "Instalando o wget ..."
apt-get install wget -y
echo "wget instalado."

echo "Baixando os arquivos da aplicação Main"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Arquivos da aplicação Main foram baixados."

echo "Copiando os arquivos da aplicação Main para o diretório da aplicação web"
unzip main.zip
cd linux-site-dio-main
cp -R */var/www/html/
echo "Arquivos da aplicação Main foram copiados para o diretório da aplicação web"
