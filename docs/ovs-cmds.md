ovs-vsctl show                               # Print summary of the ovs database content (bridges, interfaces, ports, etc)
ovs-vsctl add-br <bridge_name>               # Add a new bridge
ovs-vsctl del-br <bridge_name>               # Delete existing bridge
ovs-vsctl add-port <bridge_name> <port_name> # Add a new port in the specified bridge

ip a (= 'ip addr' = 'ip address')            # Displays addresses and their properties
ip addr del <IP address/CIDR> dev <device>   # Remove the specified address from the specified device
ip set link <interface_name> up              # Bring an interface up
ip tuntap add mode tap <device_name>         # Add TAP device

http://wiki.flav.com/wiki/Open_vSwitch_Tutorial

ovs-vsctl add-port maas mgmt0
ovs-vsctl set interface mgmt0 type=internal

    ovs-vsctl add-port $OVS_BRIDGE_NAME $OVS_ADD_PORT -- \
      set interface $OVS_ADD_PORT type=internal
for iface in ; do ovs-vsctl del-port gw34; done
for iface in ; do ovs-vsctl del-port gw34; done
