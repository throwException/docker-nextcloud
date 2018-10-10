#!/bin/bash

docker stop nextcloud
docker rm nextcloud
docker run -d \
--name nextcloud \
-v /srv/nextcloud/html:/var/www/html \
-v /srv/nextcloud/apps:/var/www/html/custom_apps \
-v /srv/nextcloud/config:/var/www/html/config \
-v /srv/nextcloud/data:/var/www/html/data \
-v /srv/nextcloud/themes:/var/www/html/themes \
-v /srv/nextcloud/server/apps/oauth2:/var/www/html/apps/oauth2 \
-p 127.0.0.1:8084:80 \
nextcloud

