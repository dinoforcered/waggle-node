#!/bin/bash

build_service() {
    docker buildx build -t "$1" --platform linux/amd64,linux/arm64,linux/arm/v7 --push "$2"
}

build_service waggle/rabbitmq:nc rabbitmq-node
build_service waggle/message-staging-node:nc message-staging-node
build_service waggle/shovelctl shovelctl
build_service waggle/registration registration