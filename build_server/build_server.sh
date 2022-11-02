#!/bin/bash

rm /root/easy-rsa/vars
cp /app/build_server/vars /root/easy-rsa
cd /root/easy-rsa/
echo yes | ./easyrsa gen-req server nopass
echo yes | ./easyrsa sign-req server server

cp /root/easy-rsa/pki/issued/server.crt /app/files/server
cp /root/easy-rsa/pki/private/server.key /app/files/server