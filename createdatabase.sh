#!/bin/bash

su -c 'createuser --username=postgres --no-superuser --pwprompt nextcloud' postgres
su -c 'createdb --username=postgres --owner=nextcloud --encoding=UNICODE nextcloud' postgres

