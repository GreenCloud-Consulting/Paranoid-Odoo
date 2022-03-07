#!/bin/bash

sudo apt-get -y install --no-install-recommends wget gnupg ca-certificates

wget -O - https://openresty.org/package/pubkey.gpg | sudo apt-key add -


echo "deb http://openresty.org/package/ubuntu $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/openresty.list

sudo apt-get update

sudo apt-get -y install openresty
