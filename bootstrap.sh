#!/usr/bin/env bash

apt-get update
wget -qO- https://deb.nodesource.com/setup_12.x | sudo -E bash -
apt-get install -y nodejs
apt-get install nginx -y
