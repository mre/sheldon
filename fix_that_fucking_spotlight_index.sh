#!/bin/bash

# Renew a Mac's DHCP Lease Via Terminal
# Usage: ./fix_that_fucking_spotlight_index.sh

. lib-sheldon.sh

os=$( get_os )
if [[ "$os" == "mac" ]]
then
  sudo mdutil -i on /
  sudo mdutil -E /
fi
