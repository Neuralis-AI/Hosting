#!/bin/bash

# Ubuntu, Red Hat, CentOS
apt-get update
apt install fail2ban -y
wget -O /etc/fail2ban/jail.local
wget -O /etc/fail2ban/action.d/iptables-common.local
chmod 744 /etc/fail2ban/jail.local
chmod 744 /etc/fail2ban/action.d/iptables-common.local
systemctl restart fail2ban
exit
