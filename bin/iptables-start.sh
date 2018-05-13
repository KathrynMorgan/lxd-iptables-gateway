#!/bin/sh -e
# Linked at /etc/init.d/
# This will enable ipv4 forwarding and raise iptables rules

# Enable NAT
sysctl -w net.ipv4.ip_forward=1

# raise firewall
fwup
