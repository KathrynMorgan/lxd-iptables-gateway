## LXD Gateway template files

WORK IN PROGRESS
.
├── LICENSE
├── README.md
├── bin
│   ├── dhcpctl
│   ├── fwclr
│   ├── fwup
│   └── iptables-start.sh
├── dhcpd
│   ├── dhcpd.conf
│   ├── etc-default-dhcpd.conf
│   └── etc-dhcp-dhcpd.conf
├── docs
│   ├── build-a02.log
│   ├── build-log
│   ├── build.log
│   ├── lxd-cmds.md
│   ├── old
│   │   ├── control-plane.rules
│   │   ├── iptables
│   │   ├── iptables.fwd
│   │   └── maas.rules
│   └── ovs-cmds.md
├── iface
│   ├── interfaces.d
│   │   ├── lan-eth1.cfg
│   │   └── wan-eth0.cfg
│   └── netplan
│       └── iface.cfg
├── iptables-available
│   ├── interfaces.conf
│   ├── iptables.conf
│   ├── iptables.fwd
│   ├── wan-ethernet.rules
│   └── wan-wifi.rules
└── iptables-enabled
    ├── interfaces.conf
    ├── iptables.conf
    ├── iptables.fwd
    └── wan-ethernet.rules

9 directories, 30 files
