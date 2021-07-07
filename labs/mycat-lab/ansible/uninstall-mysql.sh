# On CentOS
# stop mysql service
systemctl stop mysqld

# remove mysql related packages
yum remove mysql-community-server mysql-community-client MySQL-python

# remove mysql directory
rm -rf /var/lib/mysql