#!/bin/bash

echo "Update server"
apt update -y
apt upgrade -y

echo "Intall apache-server"
apt -y install apache2

echo "Install unzip"
apt -y install unzip

echo "Download application in address on Github"
wget -P /tmp/ https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

cd /tmp/

echo "Unzip files"
unzip /tmp/main.zip 

echo "Copy for directory /var/www/html"
cp -R /tmp/linux-site-dio-main/* /var/www/html/

echo "Finish script!!"