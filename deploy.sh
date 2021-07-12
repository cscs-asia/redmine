#!/usr/bin/env bash

CI_PACKAGE_REGISTRY="local-redmine:$(date +%s)"
docker build -t "${CI_PACKAGE_REGISTRY}" -f ./docker/Dockerfile .
docker save -o image.tar "${CI_PACKAGE_REGISTRY}" 
ctr image import image.tar
rm image.tar
echo "image: ${CI_PACKAGE_REGISTRY}"

cd ./kubernetes
../kustomize edit set image redmine=${CI_PACKAGE_REGISTRY}
../kustomize build ./ | kubectl apply -f - --wait=true