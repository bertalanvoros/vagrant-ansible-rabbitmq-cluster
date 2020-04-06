# vagrant-ansible-rabbitmq-cluster

## Requirememnts

1. Vagrant
2. Virtualbox
3. Virtualbox Ethernet interface configured to be on the 192.168.222.0/24 network.

## How to build the RabbitMQ cluster

1. Clone this repository.
2. Change into the folder where you cloned this into.
3. Issue 'vagrant up'
4. Once finished you should be able to get to http://192.168.222.10:15672
5. Log in using the tempadmin credentials.
6. Create an admin user for yourself then delete tempadmin.

## How to turn off the cluster at the end of the day.

1. Option one: 'vagrant suspend', this will hibernate all three VMs.
2. Option two: 'vagrant halt', this will shut down the VMs, state saved.
3. Start existing cluster: vagrant up

## How to destroy the entire cluster.

1. Issue 'vagrant destroy -f' This will shut down and delete all three VMs.  
   You should export the RrabbitMQ configuration before doing this to ease rebuilding.
   Once destroyed, vagrant up will build a clean one with no configuration using the tempadmin account.
