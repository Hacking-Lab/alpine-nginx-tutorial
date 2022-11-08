#!/bin/bash

case `uname -m` in 

	x86_64)
		echo "=============================================="
		echo "building x86_64"
		docker buildx build --push --platform linux/amd64 --no-cache -t hackinglab/alpine-nginx-tutorial:amd64-latest -t hackinglab/alpine-nginx-tutorial:amd64-$1 -t hackinglab/alpine-nginx-tutorial:amd64-$1.0 -f Dockerfile .
	;;

	aarch64)
                echo "=============================================="
                echo "building arm64"
                docker buildx build --push --platform linux/arm64 --no-cache -t hackinglab/alpine-nginx-tutorial:arm64-latest -t hackinglab/alpine-nginx-tutorial:arm64-$1 -t hackinglab/alpine-nginx-tutorial:arm64-$1.0 -f Dockerfile .
	;;

	*)
		echo "OS not found"
	;;
esac
