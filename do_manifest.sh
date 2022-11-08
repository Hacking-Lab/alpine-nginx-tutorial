docker manifest create hackinglab/alpine-base-tutorial --amend hackinglab/alpine-base-tutorial:amd64-latest --amend hackinglab/alpine-base-tutorial:arm64-latest
docker manifest create hackinglab/alpine-base-tutorial:3.2 --amend hackinglab/alpine-base-tutorial:amd64-3.2 --amend hackinglab/alpine-base-tutorial:arm64-3.2
docker manifest create hackinglab/alpine-base-tutorial:3.2.0 --amend hackinglab/alpine-base-tutorial:amd64-3.2.0 --amend hackinglab/alpine-base-tutorial:arm64-3.2.0
docker manifest push hackinglab/alpine-base-tutorial
docker manifest push hackinglab/alpine-base-tutorial:3.2
docker manifest push hackinglab/alpine-base-tutorial:3.2.0
