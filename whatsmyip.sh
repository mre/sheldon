#!/bin/bash

# Get public ip from coammandline
# From: http://www.commandlinefu.com/commands/view/1733/get-own-public-ip-address
# Usage: ./whatsmyip.sh

. lib-sheldon.sh

os=$( get_os )
if [[ "$os" == "mac" ]]
then
  curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+'
else
  wget -qO- whatismyip.org
fi
