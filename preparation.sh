#!/bin/bash

sudo apt-get update
sudo apt-get install emacs-nox tmux htop tig 
sudo apt install docker-compose
sudo usermod -aG docker $USER

sudo mkdir /opt/dockerdata
cd /opt/dockerdata/

sudo mkdir mosquitto-data
sudo mkdir mosquitto-conf
sudo mkdir teslamate-db
sudo mkdir teslamate-grafana-data

sudo chown 1883:pi mosquitto-data/
sudo chown 1883:pi mosquitto-conf/
sudo chown 472:pi teslamate-grafana-data/
sudo chown 999:pi teslamate-db/

sudo chmod g+ws teslamate-db/
sudo chmod g+ws teslamate-grafana-data/
sudo chmod g+ws mosquitto-data/
sudo chmod g+ws mosquitto-conf/

#docker-compose up -d

