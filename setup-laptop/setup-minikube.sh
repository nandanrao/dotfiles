curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && \
sudo install minikube-linux-amd64 /usr/local/bin/minikube

sudo apt install -y libvirt-clients libvirt-daemon-system qemu-kvm

sudo usermod -a -G libvirt $(whoami)

newgrp libvirt

curl -LO https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-kvm2 \
&& sudo install docker-machine-driver-kvm2 /usr/local/bin/

