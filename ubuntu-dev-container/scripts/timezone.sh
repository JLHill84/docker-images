#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt-get update && apt-get install -y tzdata
ln -fs /usr/share/zoneinfo/America/Central /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
apt-get install keyboard-configuration -y
