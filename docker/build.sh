#!/usr/bin/env bash

CI_PACKAGE_REGISTRY="cscsasia/redmine:$(date +%s)"
docker build -t "${CI_PACKAGE_REGISTRY}" -f ./docker/Dockerfile ./docker
docker push "${CI_PACKAGE_REGISTRY}"
echo "${CI_PACKAGE_REGISTRY}"