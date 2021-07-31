curl -sfL https://get.k3s.io | sh -
# Check for Ready node,
# takes maybe 30 seconds
sudo chmod 644 /etc/rancher/k3s/k3s.yaml
k3s kubectl get node