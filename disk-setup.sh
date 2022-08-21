#!/bin/bash

sudo chown -R homeserver:homeserver /nas
sudo chmod -R 755 /nas

sudo echo 'UUID='$1' /nas ext4 defaults,auto,rw,nofail 0 1 #Mounts plex drive' >> /etc/fstab
sudo umount /mnt/sda1
sudo mount /nas