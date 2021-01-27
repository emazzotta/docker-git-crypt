# docker-git-crypt build file.
#
# All commands necessary to go from development to release candidate should be here.

# -----------------------------------------------------------------------------
# BUILD
# -----------------------------------------------------------------------------
.PHONY: all
all: build

.PHONY: build
build:
	@export IMAGE_NAME=emazzotta/docker-git-crypt && hooks/build

.PHONY: push
push:
	@docker push emazzotta/docker-git-crypt

.PHONY: run
run:
	@docker run --rm emazzotta/docker-git-crypt
