#!/bin/bash

# Get public ip from coammandline
# Usage: ./whatsmyip.sh

. lib-sheldon.sh

os=$( get_os )
if [[ "$os" == "mac" ]]
then
  curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+'
else
  wget -qO- whatismyip.org
fi
