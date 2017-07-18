systemctl enable serial-getty@ttyS0.service
systemctl start serial-getty@ttyS0.service

sed "s/quiet/console=tty0,ttyS0,115200n8 net.ifnames=0/" -i /etc/default/grub 
echo "GRUB_TERMINAL=serial" >> /etc/default/grub
echo "GRUB_SERIAL_COMMAND=\"serial --speed=115200 --unit=0 --word=8 --parity=no --stop=1\"" >> /etc/default/grub
update-grub
