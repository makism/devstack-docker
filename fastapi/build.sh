#!/usr/bin/env bash

docker build \
    -f fastapi.Dockerfile \
    -t fastapi_app .
