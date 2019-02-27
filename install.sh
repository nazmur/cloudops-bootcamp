#!/bin/bash
sudo apt-get update
sudo apt-get install -y docker.io
sudo usermod -a -G docker ec2-ubuntu
sudo service docker start
sudo chkconfig docker on
sudo apt-get install -y docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-comp$
sudo usermod -a -G docker-compose ec2-ubuntu

