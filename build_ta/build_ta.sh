#!/bin/bash

cd /root/easy-rsa/
openvpn --genkey --secret ta.key

cp /root/easy-rsa/ta.key /app/files/ta
cp /root/easy-rsa/ta.key /etc/openvpn/server