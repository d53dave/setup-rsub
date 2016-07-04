#!/bin/bash

$url="https://raw.github.com/aurora/rmate/master/rmate"
$target="/usr/local/bin/rsub"

if [ "$EUID" -ne 0 ] ; then
  echo "Please run as root"
  exit 1
else
  wget -O $target $url 2>/dev/null || curl -o $target $url
  chmod +x $target
  exit $?
fi
