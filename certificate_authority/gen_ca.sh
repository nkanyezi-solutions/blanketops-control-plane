#!/bin/bash

# Create private key for CA
openssl genrsa -out ca.key 2048

# Create CSR using the private key
openssl req -new -key ca.key -subj "/CN=KUBERNETES-CA/O=Kubernetes" -out ca.csr

# Self sign the csr using its own private key
openssl x509 -req -in ca.csr -signkey ca.key -CAcreateserial -out ca.crt -days 1000
