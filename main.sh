#!/usr/bin/env bash
source openstack/openstack-vars-openrc.sh
openstack stack create --template openstack/heat_vm.yaml Humid
