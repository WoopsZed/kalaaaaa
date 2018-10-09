#!/bin/bash

if [ -z "$1" ]; then
	echo "[*] Simple Zone transfer script"
	echo "[*] Usage    : $0 <domain name>"
fi

for server in $(host -t ns $1 |cut -d" " -f4); do
	host -l $1 $server
done