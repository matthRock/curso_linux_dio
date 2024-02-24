#!/bin/bash

echo 'Acessando pasta raiz..'
# acessando pasta raiz
cd /

echo 'Criando diretórios..'
# criando diretórios
mkdir publico 
mkdir adm 
mkdir ven 
mkdir sec

echo 'Criando grupos..'
# criando grupos
groupadd GRP_ADM
groupadd GRP_VEN 
groupadd GRP_SEC

echo 'criando usuários..'
# criando usuarios
useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM,
passwd carlos -e

useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd joao -e

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd amanda -e 

useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd rogerio -e

echo 'Atribuindos donos..'
# atribuindo owners
chown root:GRP_ADM adm/
chown root:GRP_VEN ven/
chown root:GRP_SEC sec/

echo 'Atribuindo permissoes'
# atribuindo permissoes
chmod 770 adm/
chmod 770 ven/
chmod 777 publico/
chmod 770 sec/






