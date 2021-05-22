### Author Sunil Sankar
### Adding extradisk for Pega
Vagrant.configure(2) do |config|
  config.ssh.insert_key = false
  config.vm.provision "shell", path: "bootstrap.sh"
  config.vm.define "jupiter" do |node|
    node.vm.box = "bento/ubuntu-20.04"
    node.vm.hostname = "jupiter"
    node.vm.network :private_network, ip: "192.168.20.20"
    node.vm.provider "virtualbox" do |domain|
      domain.memory = "4096"
      domain.name = "jupiter"
      domain.cpus = "2"
    end
  end
end