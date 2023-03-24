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

useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd -crypt Mudar123) -G GRP_ADM
useradd maria -c "Maria José" -m -s /bin/bash -p $(openssl passwd -crypt Mudar123) -G GRP_ADM
useradd joao -c "João Francisco" -m -s /bin/bash -p $(openssl passwd -crypt Mudar123) -G GRP_ADM

useradd debora -c "Debora Aguiar" -m -s /bin/bash -p $(openssl passwd -crypt Mudar123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Siqueira" -m -s /bin/bash -p $(openssl passwd -crypt Mudar123) -G GRP_VEN
useradd roberto -c "Roberto Carlos" -m -s /bin/bash -p $(openssl passwd -crypt Mudar123) -G GRP_VEN

useradd josefina -c "Josefina Mendes" -m -s /bin/bash -p $(openssl passwd -crypt Mudar123) -G GRP_SEC
useradd amanda -c "Amanda Torres" -m -s /bin/bash -p $(openssl passwd -crypt Mudar123) -G GRP_SEC
useradd rogerio -c "Rogério Lemos" -m -s /bin/bash -p $(openssl passwd -crypt Mudar123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Procedimento realizado com êxito."


