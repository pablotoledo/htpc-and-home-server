# -*- mode: ruby -*-
# vi: set ft=ruby :

# This vagrant file will create a virtual machine with the following configuration:
# - VMWare Fusion provider
# - Ubuntu 22.04 LTS
# - 2 CPU cores
# - 8 GB RAM
# - 80 GB disk space (dynamic) single file
# - 1 network interface
# - 1 bridged network interface with fixed IP address 192.168.0.80

# This Vagrantfile is going to run the following scripts present in this repository:
# - script-install-sw.sh


Vagrant.configure("2") do |config|
    # Ubuntu 22.04 LTS
    config.vm.box = "fasmat/ubuntu2204-desktop"

    # VMWare Fusion provider
    config.vm.provider "vmware_fusion" do |v|
        # 2 CPU cores
        v.cpus = 2

        # 8 GB RAM
        v.memory = 8192

        # 80 GB disk space (dynamic) single file
        v.disk :size => "80GB", :type => "thick", :mode => "persistent"

        # 1 network interface
        v.network :private_network, :ip => "192.168.0.80"
    end

    # Copy directory to the VM at home directory
    config.vm.synced_folder ".", "/home/vagrant", type: "rsync"#, rsync__exclude: ".git/"

    # Running the script-install-sw.sh script
    config.vm.provision "shell", path: "src/script-install-sw.sh"

    # Running install-environment-vars.sh as vagrant user
    config.vm.provision "shell", inline: <<-SHELL
        sudo -u vagrant /home/vagrant/src/install-environment-vars.sh
    SHELL
    
    # Running commands to let vagrant user to use docker without sudo
    config.vm.provision "shell", inline: <<-SHELL
        sudo usermod -aG docker vagrant
        sudo chown vagrant /var/run/docker.sock
    SHELL
    

end