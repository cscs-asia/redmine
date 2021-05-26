# cscs-server

kustomize build ./kubernetes | kubectl apply -f -

# docker build

TIMESTAMP="$(date +%s)" \
CI_PACKAGE_REGISTRY="cscsasia/redmine:${TIMESTAMP}" \
docker build -t "${CI_PACKAGE_REGISTRY}" -f ./docker/Dockerfile . \
docker push "${CI_PACKAGE_REGISTRY}"