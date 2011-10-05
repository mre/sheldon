#!/bin/bash

# Renew a Mac's DHCP Lease Via Terminal
# Usage: ./renew_dhcp.sh

# Source:
# http://archive.robwilkerson.org/2008/05/08/renew-a-macs-dhcp-lease-via-terminal/index.html

# TODO:
# Extend for other Operating Systems.

. shelper-lib.sh

os=$( get_os )
if [[ "$os" == "mac" ]]
then
  sudo ifconfig set en0 BOOTP
  sudo ifconfig set en0 DHCP
fi

