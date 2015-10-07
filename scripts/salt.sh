apt-get install -y salt-minion
service salt-minion stop
sed -i "s/#master: salt/master: mothership.local/" /etc/salt/minion
service salt-minion start
