#!/bin/bash

cd /nas/media-center/

docker stop vpn
docker-compose up -d

sleep 1m  #waiting for VPN to connect

docker stop jackett
docker stop qbittorrent
docker-compose up -d
