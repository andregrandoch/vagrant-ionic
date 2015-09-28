# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Standard minimal Ubuntu box
  config.vm.box = "hashicorp/precise32"

  # Port 9000 is where grunt server is doing serving from
  config.vm.network :forwarded_port, guest: 8100, host: 8100
  # Port 35729 is required by LiveReload to reflect content changes
  config.vm.network :forwarded_port, guest: 35729, host: 35729

  # projects folder next to this Vagrantfile will be shared with the VM
  config.vm.synced_folder "projects", "/home/vagrant/projects"

  # Configure everything else ready to run Yeoman
  config.vm.provision "shell", path: "provision.sh"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 4
  end

end
