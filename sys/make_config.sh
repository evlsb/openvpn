#!/bin/bash

# First argument: Client identifier

KEY_DIR_CA=/app/files/ca
KEY_DIR_CLIENT=/app/files/clients
KEY_DIR_TA=/app/files/ta
OUTPUT_DIR=/app
BASE_CONFIG=/app/sys/base.conf

cat ${BASE_CONFIG} \
    <(echo -e '<ca>') \
    ${KEY_DIR_CA}/ca.crt \
    <(echo -e '</ca>\n<cert>') \
    ${KEY_DIR_CLIENT}/${1}/${1}.crt \
    <(echo -e '</cert>\n<key>') \
    ${KEY_DIR_CLIENT}/${1}/${1}.key \
    <(echo -e '</key>\n<tls-crypt>') \
    ${KEY_DIR_TA}/ta.key \
    <(echo -e '</tls-crypt>') \
    > ${OUTPUT_DIR}/client1.ovpn