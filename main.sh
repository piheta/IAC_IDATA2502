#!/usr/bin/env bash
source openstack/openstack-vars-openrc.sh
openstack stack create --template openstack/heat_vm.yaml Humidity
echo "waiting for vm creation..."
sleep 60
ansible-playbook -i ansible/hosts ansible/main.yaml
