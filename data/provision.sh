#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y nodejs
sudo apt-get install -y mongodb
sudo apt-get install -y npm
sudo apt-get install -y wget
sudo apt-get install -y zip
mkdir /api
cd /api
sudo wget -P /api https://github.com/antonio202/login-node/archive/master.zip
sudo unzip master.zip
cd login-node-master
sudo npm i express express-session cookie-parser connect-flash ejs bcrypt-nodejs body-parser mongoose morgan passport passport-local
node src/server.js