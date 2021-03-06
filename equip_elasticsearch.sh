#!/bin/sh

#
# Ubuntu Equip 
#  elasticsearch Equip
# Licence: MIT
# see http://www.elasticsearch.org/tutorials/2010/07/02/setting-up-elasticsearch-on-debian.html

wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

sudo apt-get update -y
sudo apt-get install unzip -y


curl -OL https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.0.zip
unzip elasticsearch-* && rm -f elasticsearch-*.zip
mv elasticsearch-0.90.0/ elasticsearch/

cd elasticsearch/
bin/plugin -install polyfractal/elasticsearch-inquisitor

# sudo mv elasticsearch/ /usr/local/elasticsearch

# wget --no-check-certificate https://raw.github.com/aglover/ubuntu-equip/master/etc/elasticsearch.init.d

# sudo mv ./elasticsearch.init.d /etc/init.d/elasticsearch
# sudo chmod +x /etc/init.d/elasticsearch
# sudo update-rc.d elasticsearch defaults

# wget --no-check-certificate https://raw.github.com/aglover/ubuntu-equip/master/etc/elasticsearch.yml

# sudo mkdir /etc/elasticsearch
# sudo mv ./elasticsearch.yml /etc/elasticsearch/elasticsearch.yml

# you will need to manually start elasticsearch via /etc/init.d/elasticsearch start