#!/bin/bash

docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/alpine-nginx-tutorial:latest . --push
docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/alpine-nginx-tutorial:$1  . --push
docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/alpine-nginx-tutorial:$1.0 . --push

