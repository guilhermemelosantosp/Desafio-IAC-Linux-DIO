#! /bin/bash

echo "Criação de Pastas..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criaçãode de Grupos ..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação de Usuarios..."

useradd carlos  -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria  -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao  -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora  -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana  -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto  -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina  -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda  -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio  -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

passwd -e carlos
passwd -e maria
passwd -e joao
passwd -e debora
passwd -e sebastiana
passwd -e josefina
passwd -e amanda
passwd -e rogerio

echo "Gerenciamento de pastas..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Fim !!!!" 
