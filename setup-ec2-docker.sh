#!/bin/sh

# install docker 
sudo amazon-linux-extras install -y docker
sudo systemctl start docker
sudo usermod -a -G docker ec2-user

# install docker compose cli
sudo mkdir -p /usr/local/lib/docker/cli-plugins
sudo curl -SL https://github.com/docker/compose/releases/download/v2.16.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/lib/docker/cli-plugins/docker-compose
sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose
