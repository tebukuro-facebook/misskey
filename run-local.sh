#!/bin/bash

docker-compose -f docker-compose.local.yml stop

docker-compose -f docker-compose.local.yml build

docker-compose -f docker-compose.local.yml run --rm web yarn run init

docker-compose -f docker-compose.local.yml up -d

docker ps
