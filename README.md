# vagrant-ansible-rabbitmq-cluster

## Requirememnts

1. Vagrant
2. Virtualbox
3. Virtualbox Ethernet interface configured to be on the 192.168.222.0/24 network.

## How to use this

1. Clone this repository.
2. Change into the folder where you cloned this into.
3. Issue 'vagrant up'
4. Once finished you should be able to get to http://192.168.222.10:15672
5. Log in using the tempadmin credentials.
6. Create an admin user for yourself then delete tempadmin.
