#CheatSheet

lxc config device add haproxy eth1 nic nictype=bridged parent=maas name=eth1

# macvlan & device attach
lxc profile device set default eth0 parent eth0
lxc profile device set default eth0 nictype macvlan

# parent set
lxc profile device set default eth0 parent containerbr

# how to apply a single or multiple profiles to a container:
lxc profile apply <container> <profile1>,<profile2>,<profile3>,...

# How to launch a container with a pre-defined profile:
lxc launch ubuntu: maas-repo-mirrors -p maas

root@myprecious-braincraft-io:~# lxc network attach lxdbr0 SnapCrafter-UbuntuCore eth0
root@myprecious-braincraft-io:~# lxc config device set SnapCrafter-UbuntuCore eth0 ipv4.address 10.12.0.64

###
### Snapshot & Export & Import 
###
lxc snapshot c1 c1-snapshot1
lxc publish c1/c1-snapshot1 --alias c1-template1-image1
lxc image export c1-template1-image1 .
lxc image delete c1-template1-image1
lxc image import TARBALL --alias c1-image1
lxc launch c1-image1 new-container-name
lxc image delete c1-image1

# Example LXD init commands
lxd init --auto \
--storage-backend zfs \
--storage-pool tank \
--storage-create-loop 20 \
--network-address 0.0.0.0 \
--network-port 8443 \
--trust-password password

lxd init --auto \
     --storage-backend dir \
     --network-address 0.0.0.0 \
     --network-port 8443 \
     --trust-password password

#https://www.hiroom2.com/2016/06/19/ubuntu-16-04-run-containers-with-lxd-lxc/
ovs-vsctl add-port physical-net eno4
ovs-vsctl add-port physical-net mgmt0 -- set interface mgmt0 type=internal
lxc config device add bcio-ovs-overlay-gw01 egw01 nic nictype=physical parent=egw01 name=egw01
https://www.lucaswilliams.net/index.php/2016/10/02/maas-2-0-and-dns/

lxc list --format=csv -c n,s | grep -i stopped

# Add volatile ovs port to lxd container
# Define VARS
$lxd_BRIDGE_NAME="control-plane"
$lxd_CONTAINER_NAME="r910n01-gw-c01"
$lxd_CONTAINER_IFACE="cp01"
# Generate Unique HWADDR
$lxd_CONTAINER_HWADDR=\
    $(echo"$lxd_BRIDGE_NAME$lxd_CONTAINER_NAME$lxd_CONTAINER_IFACE" \
     | md5sum \
     | sed 's/^\(..\)\(..\)\(..\)\(..\)\(..\).*$/02:\1:\2:\3:\4:\5/'\
     )
# Configure Network Iface
lxc network attach control-plane r910n01-gw-c01 cp01
lxc config set r910n01-gw-c01 volatile.cp01.name cp01
lxc config set r910n01-gw-c01 volatile.cp01.host_name cp01

lxc config device add \
      $LXD_CONT_NAME \
      $OVS_ADD_PORT nic \
      nictype=physical \
      parent=$OVS_BRIDGE_NAME \
      name=$OVS_ADD_PORT

server_config/lxd/README for thing in $(lxc list --format=csv -c n,s | awk -F',' '$2 - /,STOPPED/{print $1;}'); do echo "Container is stopped - $thing"; done

## Resize .img file zfs backend
sudo truncate -s +50G /var/snap/lxd/common/lxd/disks/default.img
sudo zpool set autoexpand=on default
zpool online -e default /var/snap/lxd/common/lxd/disks/default.img 
sudo zpool set autoexpand=off default
#xc config device add cephosd11 fiob disk source=/dev/fiob path=/dev/fiob
for i in fioa
fiob
fioc
fiod
fioe
fiof; do chown 100000:100000 /tmp/; done
for i in fioa
fioa1
fiob
fiob1
fioc
fioc1
fiod
fiod1
fioe
fioe1
fiof
fiof1; do parted -a opt /dev/fiof --script mklabel gpt mkpart primary btrfs 0% 100% ; done
