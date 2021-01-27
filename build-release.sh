#!/bin/bash
docker build --no-cache -t hackinglab/alpine-nginx-tutorial:$1.0 -t hackinglab/alpine-nginx-tutorial:$1 -t hackinglab/alpine-nginx-tutorial:latest -f Dockerfile .

docker push hackinglab/alpine-nginx-tutorial
docker push hackinglab/alpine-nginx-tutorial:$1
docker push hackinglab/alpine-nginx-tutorial:$1.0

