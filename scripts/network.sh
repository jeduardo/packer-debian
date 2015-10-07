cat /etc/network/interfaces | grep -v eth0 > /tmp/interfaces
echo "auto eth0
iface eth0 inet static
address $IP_ADDR
network $IP_NETWORK
broadcast $IP_BCAST
gateway $IP_GW" >> /tmp/interfaces
cat /tmp/interfaces > /etc/network/interfaces
rm /tmp/interfaces

ufw allow from $IP_FWID
ufw enable

echo "" > /etc/resolv.conf
for dns in $(echo "8.8.8.8,8.8.4.4" | tr "," " "); do 
  echo "nameserver $dns" >> /etc/resolv.conf
done
