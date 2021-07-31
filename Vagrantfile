Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.hostname = "ubuntu2004"

  config.vm.network "private_network", ip: "192.168.30.101"

  config.vm.network "forwarded_port", guest: 8222, host: 8222, protocol: "tcp"
  config.vm.network "forwarded_port", guest: 8222, host: 8222, protocol: "udp"

  config.vm.provision "shell", path: "config.learn.ubuntu.sh", name: "learns"
  config.vm.provision "shell", path: "https://get.docker.com", name: "dockers"
  config.vm.provision "shell", path: "config.docker.after.install.sh", name: "afters"
  config.vm.provision "shell", path: "config.k3s.install.sh", name: "k3s"
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = 4
  end
end
