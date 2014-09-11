#!/bin/bash

# Create a SSL certificate

if $# != 0

	for i
	do

		openssl genrsa -out $i.key 1024
		openssl req -new -key $i.key -out $i.csr
		openssl x509 -req -days 365 -in $i.csr -signkey $i.key -out $i.crt

		cp $i.crt /etc/ssl/certs
		cp $i.key /etc/ssl/private

	done

fi

else echo "error: invalid name argument"
