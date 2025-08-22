sudo snap install microk8s --classic --channel=1.30/stable
sudo usermod -aG microk8s $USER
sudo chown -f -R $USER ~/.kube
newgrp microk8s
microk8s enable dns storage helm3
alias kubectl='microk8s kubectl'
