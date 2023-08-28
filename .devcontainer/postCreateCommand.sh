curl -L -o kind "https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-${TARGETARCH}" && install -c -m 0755 kind /usr/local/bin

curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/${TARGETARCH}/kubectl && chmod +x ./kubectl && mv ./kubectl /usr/local/bin

kind create cluster || kind get kubeconfig > $HOME/.kube/config