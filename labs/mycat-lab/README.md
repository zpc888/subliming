# Setup MyCat

## Design
- 10.0.0.101 and 10.0.0.102 will install MyCat
```
# STEP.1: install and configure jdk
ansible-playbook -K playbook-install-jdk8.yml
# STEP.2: install and configure MyCat
ansible-playbook -K playbook-install-mycat.yml
```
- 10.0.0.101, 10.0.0.102, 10.0.0.103 and 10.0.0.104 will install MySQL
```
# STEP.1: install and configure mysql
ansible-playbook -K playbook-install-mysql57.yml
# STEP.2: create testdb01 database
ansible-playbook -K playbook-create-testdb01.yml
```

## verify VMs created and started successfully
```
ansible -m ping all
```

## verify MyCat works
```
mysql -uroot -p123456 -P 9066 -h 10.0.0.101      # admin port
mysql -uroot -p123456 -P 8066 -h 10.0.0.101      # data access
```

# github tags
## One master and one slave
[One Master and one slave](https://github.com/zpc888/subliming/releases/tag/MILESTONE-1-Master-1-Slave)

## Two master and two slave
[Two Master and two slave](https://github.com/zpc888/subliming/releases/tag/MILESTONE-2-Master-2-Slave)

