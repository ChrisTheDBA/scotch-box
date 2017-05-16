# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "scotch/box"
    config.vm.network "private_network", ip: "192.168.33.10"
    config.vm.hostname = "dsbox"
    config.vm.synced_folder ".", "/var/www", :mount_options => ["dmode=777", "fmode=666"]
    
    config.vm.network "forwarded_port", guest:8000, host:8000
    config.vm.network "forwarded_port", guest:3306, host:3306
    config.vm.network "forwarded_port", guest:7474, host:7474
    config.vm.network "forwarded_port", guest:5432, host:5432
    config.vm.network "forwarded_port", guest:8787, host:8787
    config.vm.network "forwarded_port", guest:3838, host:3838

    config.vm.provision "shell", path: "provisioner-php7.0.sh"
    
    # Optional NFS. Make sure to remove other synced_folder line too
    #config.vm.synced_folder ".", "/var/www", :nfs => { :mount_options => ["dmode=777","fmode=666"] }

end
