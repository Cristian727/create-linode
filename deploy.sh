#!/bin/bash


apt update

apt install npm nodejs certbot 

npm install

#generar certificados ssl usando certbot
certbot certonly --standalone -d dev5.cyberbunny.online --non-interactive --agree-tos -m cristian727@gmail.com

#copiar los certificados generados a la ubicación essperada por tu apllicación
cp /etc/letsencrypt/live/dev5.cyberbunny.online/fullchain.pem
cp /etc/letsencrypt/live/dev5.cyberbunny.online/privkey.pem


