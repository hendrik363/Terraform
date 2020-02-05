#!/bin/bash
sudo apt-get update
sudo apt-get install apache2 -y
sudo chmod 0777 /var/www/html/index.html
hostname > /var/www/html/index.html
