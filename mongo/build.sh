#!/usr/bin/env bash

docker pull mongo

docker-compose -f docker-compose.yml up
