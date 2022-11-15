#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -c "Carlos da Silva" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM 
useradd maria -c "Maria da Silva" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "João da Silva" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -c "Débora Nascimento" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Nascimento" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN 
useradd roberto -c "Roberto Nascimento" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -c "Josefina Tavares" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Amanda Tavares" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Tavares" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios, donos e permissões...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."
