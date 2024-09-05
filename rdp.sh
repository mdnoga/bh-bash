#!/usr/bin/env bash

MACHINE="${1}"
USERNAME="${2}"
PASSWORD="${3}"

if [[ -z "${MACHINE}" ]]
  then
    echo "Enter IP/hostname of the machine you want to connect to:"
    read -r MACHINE
fi

if [[ -z "${USERNAME}" ]]
  then
    #echo "Enter username:"
    #read -r USERNAME
    USERNAME="administrator"
fi

if [[ -z "${PASSWORD}" ]]
  then
    #echo "Enter password:"
    #read -r PASSWORD
    PASSWORD="studentlab"
fi

xfreerdp +nego +sec-rdp +sec-tls +sec-nla /d: /u: /p: /v:"${MACHINE}" /u:"${USERNAME}" /p:"${PASSWORD}" /size:1440x900 /tls-seclevel:0