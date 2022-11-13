#!/usr/bin/env bash
source openstack/openstack-vars-openrc.sh
openstack stack create --template openstack/heat_vm.yaml Humidity
echo "waiting for vm creation..."
sleep 60

echo "insert keystore passwd: "
read var_keystore_passwd
echo "insert db url"
read var_dburl
echo "insert db user"
read var_dbusr
echo "insert db passwd"
read var_dbpasswd
ansible-playbook -i ansible/hosts ansible/main.yaml --extra-vars="KEYSTOREPASSWD=$var_keystore_passwd DBURL=$var_dburl DBUSR=$var_dbusr DBPASSWD=$var_dbpasswd"

