#!/bin/bash
# disable password authentication
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
sed -i 's/AllowTcpForwarding no/AllowTcpForwarding yes/g' /etc/ssh/sshd_config
# check ssh host keys and generate if not exist
ssh-keygen -A
/usr/sbin/sshd -4 -D -e
