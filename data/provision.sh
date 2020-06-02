#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y nodejs
sudo apt-get install -y mongodb
sudo apt-get install -y npm
sudo apt-get install -y wget
sudo apt-get install -y zip
sudo apt-get install -y dos2unix
mkdir /api
cd /api
sudo wget -P /api https://github.com/antonio202/login-node/archive/master.zip
sudo unzip master.zip
cd login-node-master
sudo npm i express express-session cookie-parser connect-flash ejs bcrypt-nodejs body-parser mongoose morgan passport passport-local
sudo touch /script.sh
sudo chmod 777 /script.sh
sudo echo "if [ -e /test.sh ]">/script.sh
sudo echo "then">/script.sh
sudo echo "node /api/login-node-master/src/server.js">/script.sh
sudo echo "else">/script.sh
sudo echo "touch /test.sh">/script.sh
sudo echo "fi">/script.sh
pdw
sudo cat /script.sh
cd /
sudo sh /script.sh