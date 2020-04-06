#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive
apt-get update -y
# apt-get upgrade -y
apt-get install -y apt-transport-https ca-certificates curl software-properties-common python-simplejson python-pip chrony ansible
echo 'localhost ansible_connection=local ansible_python_interpreter="/usr/bin/env python"' | tee /etc/ansible/hosts
pip install glances
