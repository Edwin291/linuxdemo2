#! /bin/bash

sudo systemctl start docker.io
sudo docker pull nginx
sudo docker run -d -p 8080:80 nginx
