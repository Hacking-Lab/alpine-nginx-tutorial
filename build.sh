#!/bin/bash
docker build --no-cache -t hackinglab/alpine-nginx-tutorial:3.2.0 -t hackinglab/alpine-nginx-tutorial:3.2 -t hackinglab/alpine-nginx-tutorial:latest -f Dockerfile .

