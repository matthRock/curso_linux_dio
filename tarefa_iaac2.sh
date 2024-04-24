#!/bin/bash

echo 'Verificando atualizações no servidor..'
apt update -i

echo 'Instalando atualizações..'
apt upgrade -y

echo 'Instalando Apache2..'
apt install apache2 -y

echo 'Instalação finalizada'

echo 'Instalando unzip..'
apt install unzip

echo 'Unzip instalado com sucesso'

echo 'Acessando pasta temp..'
cd /tmp

echo 'Fazendo download da aplicação..'
#curl 
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo 'Descompactando aplicacao..'
unzip main.zip
cd linux-site-dio-main

echo 'transferindo arquivos da aplicação para o servidor..'
mv * /var/www/html

echo 'Removendo .zip'
rm -f  main.zip

