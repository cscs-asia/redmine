# cscs-server

kustomize build ./kubernetes | kubectl apply -f -

# docker build

TIMESTAMP="$(date +%s)" \
CI_PACKAGE_REGISTRY="cscsasia/redmine:${TIMESTAMP}" \
docker build -t "${CI_PACKAGE_REGISTRY}" -f ./docker/Dockerfile ./docker \
docker push "${CI_PACKAGE_REGISTRY}"

Debial OS

```
// Install Docker
sudo apt-get update
sudo apt-get -y install apt-transport-https ca-certificates curl gnupg lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
```

```
// Install K3s
sudo apt-get update
sudo apt-get -y install curl
curl -sfL https://get.k3s.io | sh -
```

```
// Deploy Redmine
sudo apt-get update
sudo apt-get -y install git vim
git clone https://github.com/cscs-asia/redmine.git

cd redmine/kubernetes
mv postgresql.env.example postgresql.env // Setup it
mv configuration.yml.example configuration.yml // Setup it

vim letsencrypt.yaml // Setup email
kubectl apply -f letsencrypt.yaml
kubectl apply -f ingress.yaml

kubectl apply -f postgres-pv.yaml
kubectl apply -f redmine-pv.yaml
curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash
./deploy.sh
```

iptables -A KUBE-ROUTER-INPUT -j ACCEPT