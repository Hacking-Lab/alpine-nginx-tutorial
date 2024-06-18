# Alpine NGINX Web Server Hacking-Lab Tutorial 
## Introduction
This is the template alpine nginx web server image of the Hacking-Lab CTF system

## Base
* hackinglab/alpine-base-hl:latest

## Specifications
* with s6 startup handling
* with dynamic user creation
* with or without known passwords for root and non-root user
* with `env` based dynamic ctf flag handling
* with `file` based dynamic ctf flag handling
* serving files by nginx in /opt/www

## Build & Test
1. `docker compose up --build`
2. browse to http://localhost/


