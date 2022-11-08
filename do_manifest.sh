docker manifest create hackinglab/alpine-nginx-tutorial --amend hackinglab/alpine-nginx-tutorial:amd64-latest --amend hackinglab/alpine-nginx-tutorial:arm64-latest
docker manifest create hackinglab/alpine-nginx-tutorial:3.2 --amend hackinglab/alpine-nginx-tutorial:amd64-3.2 --amend hackinglab/alpine-nginx-tutorial:arm64-3.2
docker manifest create hackinglab/alpine-nginx-tutorial:3.2.0 --amend hackinglab/alpine-nginx-tutorial:amd64-3.2.0 --amend hackinglab/alpine-nginx-tutorial:arm64-3.2.0
docker manifest push hackinglab/alpine-nginx-tutorial
docker manifest push hackinglab/alpine-nginx-tutorial:3.2
docker manifest push hackinglab/alpine-nginx-tutorial:3.2.0
