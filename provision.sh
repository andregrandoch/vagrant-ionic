#!/usr/bin/env bash

echo "Self update apt-get"
apt-get update

echo "Installing git"
apt-get install -y git

echo "Installing curl"
apt-get install -y curl

echo "Installing node and npm"
#Instructions as per https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager (Vagrant runs in root/sudo mode already)
apt-get install -y python-software-properties python g++ make

# Default ubuntu version seems to be 0.6, latest as of July 2013 is 0.10.13
# chris-lea is tracking latest node version, so we use that

echo "install nodejs" 

add-apt-repository ppa:chris-lea/node.js
apt-get update
apt-get install --yes nodejs
apt-get install --yes npm

#echo "install cordova"
#sudo add-apt-repository ppa:cordova-ubuntu/ppa
#apt-get update

echo "update NodeJS and npm"
npm install -g npm
sudo npm cache clean -f 
sudo npm install -g n 
sudo n 4.0.0  

echo "Install grunt dependencies"
npm install -g coffee-script
npm install -g grunt-cli

echo "Installing Yeoman and generators"
npm install -g yo
#npm install -g generator-webapp
#npm install -g generator-angular

echo "install ionic and ionic generator"
npm install -g cordova ionic
npm install -g generator-ionic

echo "Installing compass support"
gem update --system
gem install compass --no-ri --no-rdoc


