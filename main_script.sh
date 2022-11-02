#!/bin/bash
# apt update

apt install -y openvpn easy-rsa

mkdir ~/easy-rsa
ln -s /usr/share/easy-rsa/* ~/easy-rsa/

