#!/bin/sh

#
# Ubuntu Equip 
#  Node.js Equip
# Licence: MIT

wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

sudo apt-get install python-software-properties
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update -y
sudo apt-get install nodejs