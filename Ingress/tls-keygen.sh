#!/usr/bin/bash

KEY_FILE=$1
CERT_FILE=$2

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ${KEY_FILE} -out ${CERT_FILE}