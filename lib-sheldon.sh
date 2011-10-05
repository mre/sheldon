#!/bin/bash

# Common includes for shelper.

function get_os()
{
  # Detect Operating System.
  unamestr=`uname`
  case "$unamestr" in
  'Linux')
     echo 'linux'
     ;;
  'FreeBSD')
     echo 'freebsd'
     ;;
  'Darwin')
    echo 'mac' # Let's be pragmatic here ;)
    ;;
  *)
    echo 'unknown'
    ;;
  esac
}
