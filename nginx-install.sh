#!/bin/bash
sudo su
sudo yum update -y
sudo amazon-linux-extras install nginx1 -y 
sudo systemctl enable nginx
sudo systemctl start nginx
echo "Hello World from MATIAS $(hostname -f)" > /var/www/html/index.html