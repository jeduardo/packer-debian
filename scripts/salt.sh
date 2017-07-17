apt-get install -y salt-minion
service salt-minion stop
sed -i "s/#master: salt/master: salt.dev.infra.network/" /etc/salt/minion
service salt-minion start
