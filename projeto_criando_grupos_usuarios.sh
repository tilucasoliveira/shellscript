#!/bin/bash	

echo "Criando diretórios ..."
mkdir /publico
mkdir /admin
mkdir /ven
mkdir /sec
echo "... diretórios publico,admin,ven e sec foram criados"

echo "Criando grupo de usuários ..."
groupadd GRP_admin
groupadd GRP_ven
groupadd GRP_sec
echo "... foram criados os seguintes grupos de usuários: GRP_admin, GRP_ven, GRP_sec"

echo "Criando usuários ..."
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_admin
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_admin
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_admin

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ven
useradd sebastiao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ven
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ven

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_sec
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_sec
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_sec
echo "... foram criados os seguintes usuários: carlos, maria, joao, debora, sebastiao, roberto, josefina, amanda, rogerio"

echo "Especificando permissões dos diretórios..."
chown root:GRP_admin /admin
chown root:GRP_ven /ven
chown root:GRP_sec /sec

chmod /admin 770
chmod /ven 770
chmod /sec 770
chmod /publico 777

echo "Fim do script"