#!/bin/bash
# Q4: Write a provision script to setup a DNS server for internal office use. In addition to normal domains, resolve the following:
<<DOMAINS
git.initiumlab.com    192.168.1.10
initium.nas           192.168.1.11
initium.color-printer 192.168.1.22
initium.bw-printer    192.168.10.21
DOMAINS

apt-get install dnsmasq -yy
cat << DOMAINS > /etc/addnhosts
git.initiumlab.com    192.168.1.10
initium.nas           192.168.1.11
initium.color-printer 192.168.1.22
initium.bw-printer    192.168.10.21
DOMAINS
echo 'addn-hosts=/etc/addnhosts' >> /etc/dnsmasq.conf
service dnsmasq restart
