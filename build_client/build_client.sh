#!/bin/bash

cd /root/easy-rsa/
echo yes | ./easyrsa gen-req client1 nopass
echo yes | ./easyrsa sign-req client client1

mkdir -p /app/files/clients/client1
cp /root/easy-rsa/pki/issued/client1.crt /app/files/clients/client1
cp /root/easy-rsa/pki/private/client1.key /app/files/clients/client1
