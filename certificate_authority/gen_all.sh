#!/bin/bash

bash gen_ca.sh
bash gen_admin.sh
bash gen_kube_controller_manager.sh
bash gen_kube_poxy.sh
bash gen_kube_scheduler.sh
bash gen_kube_apiserver.sh
bash gen_apiserver_kubelet_client.sh
bash gen_etcd.sh
bash gen_service_account.sh