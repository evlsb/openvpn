#!/bin/bash

cp /app/build_ca/vars /root/easy-rsa
cd /root/easy-rsa/
echo yes | ./easyrsa build-ca nopass

cp /root/easy-rsa/pki/ca.crt /app/files/ca
cp /root/easy-rsa/pki/private/ca.key /app/files/ca