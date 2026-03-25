#!/bin/bash

# Tool Name: Polleythephisher
# Author: Ankon Polley
# GitHub: https://github.com/anknpolley123/Polleythephisher.git

BASE_DIR=$(realpath "$(dirname "$BASH_SOURCE")")
if [[ ! -d "$BASE_DIR/auth" ]]; then
    echo "Creating Auth Directory for Polleythephisher.."
	mkdir -p "$BASE_DIR/auth"
fi

CONTAINER="polleythephisher"
IMAGE="anknpolley123/polleythephisher:latest"
MOUNT_LOCATION=${BASE_DIR}/auth
check_container=$(docker ps --all --format "{{.Names}}")

if [[ ! $check_container == *"$CONTAINER"* ]]; then
	echo "Creating new Polleythephisher container..."
	docker create \
		--interactive --tty \
		--volume ${MOUNT_LOCATION}:/Polleythephisher/auth/ \
		--network host \
		--name "${CONTAINER}" \
		"${IMAGE}"
fi

docker start --interactive "${CONTAINER}"
