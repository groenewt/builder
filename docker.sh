#!/usr/bin/env bash
cp ranger/target/ranger-* ranger/dev-support/ranger-docker/dist/
cp ranger/target/version ranger/dev-support/ranger-docker/dist/
cd ranger/dev-support/ranger-docker
source download-archives.sh
export RANGER_DB_TYPE=postgres
source scripts/ozone/ozone-plugin-docker-setup.sh

docker compose -f docker-compose.ranger.yml -f docker-compose.ranger-usersync.yml -f docker-compose.ranger-tagsync.yml -f docker-compose.ranger-kms.yml up -d

sleep 30 
docker compose -f docker-compose.ranger.yml -f docker-compose.ranger-usersync.yml -f docker-compose.ranger-tagsync.yml -f docker-compose.ranger-kms.yml -f docker-compose.ranger-hadoop.yml -f docker-compose.ranger-hbase.yml -f docker-compose.ranger-kafka.yml -f docker-compose.ranger-hive.yml -f docker-compose.ranger-knox.yml -f docker-compose.ranger-ozone.yml -f docker-compose.ranger-trino.yml up
