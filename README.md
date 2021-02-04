# Alpine NGINX Web Server Hacking-Lab Tutorial 
## Introduction
This is the template alpine nginx web server image of the Hacking-Lab CTF system

## Base
* hackinglab/alpine-base:latest

## Specifications
* with s6 startup handling
* with dynamic user creation
* with or without known passwords for root and non-root user
* with `env` based dynamic ctf flag handling
* with `file` based dynamic ctf flag handling
* serving files by nginx in /opt/www

## Build & Test
1. `bash build.sh`
2. `docker-compse up`
3. `cp 641190db-cb5e-468f-906e-cd182b2d12f3.gn.ori 641190db-cb5e-468f-906e-cd182b2d12f3.gn`
4. browse to http://localhost/

## Testing only (without building)
1. `docker pull hackinglab/alpine-nginx:latest`
2. `docker-compose up`
3. browse to http://localhost/



