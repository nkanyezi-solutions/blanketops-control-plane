#!/bin/bash

openssl genrsa -out kube-apiserver.key 2048

openssl req -new -key kube-apiserver.key -subj "/CN=kube-apiserver/O=Kubernetes" -out kube-apiserver.csr -config openssl.cnf

openssl x509 -req -in kube-apiserver.csr  -CA ca.crt -CAkey ca.key -CAcreateserial -out kube-apiserver.crt -extensions v3_req -extfile openssl.cnf -days 1000