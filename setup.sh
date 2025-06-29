#!/bin/bash

# Make users and group
sudo useradd sonarr -u 13001
sudo useradd radarr -u 13002
sudo useradd lidarr -u 13003
sudo useradd readarr -u 13004
sudo useradd mylar -u 13005
sudo useradd prowlarr -u 13006
sudo useradd qbittorrent -u 13007
sudo useradd jackett -u 13008
sudo useradd plex -u 13009
sudo useradd photoprism -u 13014
sudo useradd komga -u 13015
sudo useradd syncthing -u 13016
sudo useradd bazarr -u 13017
sudo useradd recyclarr -u 13019

sudo groupadd mediacenter -g 13000
sudo usermod -a -G mediacenter sonarr
sudo usermod -a -G mediacenter radarr
sudo usermod -a -G mediacenter lidarr
sudo usermod -a -G mediacenter readarr
sudo usermod -a -G mediacenter mylar
sudo usermod -a -G mediacenter prowlarr
sudo usermod -a -G mediacenter qbittorrent
sudo usermod -a -G mediacenter jackett
sudo usermod -a -G mediacenter plex
sudo usermod -a -G mediacenter photoprism
sudo usermod -a -G mediacenter komga
sudo usermod -a -G mediacenter syncthing
sudo usermod -a -G mediacenter bazarr
sudo usermod -a -G mediacenter recyclarr

# Make directories
sudo mkdir -pv docker/{sonarr,radarr,lidarr,readarr,mylar,prowlarr,qbittorrent,jackett,plex,photoprism,komga,jellyfin,emby,bazarr,recyclarr}-config
sudo mkdir -pv data/{torrents,media}/{tv,movies,music,books,comics,photos}

# Set permissions
sudo chmod -R 775 data/
sudo chmod -R 775 docker/
sudo chown -R homeserver:mediacenter data/
sudo chown -R homeserver:mediacenter docker/
sudo chown -R sonarr:mediacenter docker/sonarr-config
sudo chown -R radarr:mediacenter docker/radarr-config
sudo chown -R lidarr:mediacenter docker/lidarr-config
sudo chown -R readarr:mediacenter docker/readarr-config
sudo chown -R mylar:mediacenter docker/mylar-config
sudo chown -R prowlarr:mediacenter docker/prowlarr-config
sudo chown -R qbittorrent:mediacenter docker/qbittorrent-config
sudo chown -R jackett:mediacenter docker/jackett-config
sudo chown -R plex:mediacenter docker/plex-config
sudo chown -R photoprism:mediacenter docker/photoprism-config
sudo chown -R komga:mediacenter docker/komga-config
sudo chown -R homeserver:mediacenter docker/jellyfin-config
sudo chown -R homeserver:mediacenter docker/emby-config
sudo chown -R homeserver:mediacenter docker/bazarr-config
sudo chown -R homeserver:mediacenter docker/recyclarr-config