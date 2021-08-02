#!/usr/bin/env bash

REGISTRY="local-redmine:$(date +%s)"
docker build -t "${REGISTRY}" -f ../docker/Dockerfile ..
docker save -o image.tar "${REGISTRY}" 
k3s ctr image import image.tar
rm image.tar
echo "image: ${REGISTRY}"

./kustomize edit set image redmine=${REGISTRY}
./kustomize build ./ | kubectl apply -f - --wait=true