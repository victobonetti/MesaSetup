Vagrant.configure("2") do |config|
    config.vm.box = "bento/ubuntu-22.04"
    config.vm.network "private_network", ip: "192.168.90.90"
    config.vm.synced_folder "./data", "/etc/mesa"
    config.vm.provider "virtualbox" do |v|
          v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
          v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      end
  end