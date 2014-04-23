#!/usr/bin/env bash

apt-get update
apt-get install -y gem git ruby1.9.1-dev make
gem install jekyll

cd /vagrant

jekyll serve --watch

