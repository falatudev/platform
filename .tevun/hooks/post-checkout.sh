#!/usr/bin/env bash

echo " ~> [hooks\post-checkout.sh] on [${1}, ${2}]"

cd ${1}

cp docker-compose.yml.stage docker-compose.yml
docker-compose rm
docker-compose up -d
