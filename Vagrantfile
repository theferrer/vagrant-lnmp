Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.network :hostonly, "47.47.47.47"

  config.vm.customize ["modifyvm", :id, "--memory", 1024]
  config.vm.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]

  config.vm.share_folder("v-root", "/vagrant", ".", :nfs => true)

  config.vm.forward_port 80, 8080 # nginx
  config.vm.forward_port 3306, 3306 # mysql
  config.vm.forward_port 27017, 27017 # mongodb
  config.vm.forward_port 6379, 6379 # redis


  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.module_path = "modules"
    puppet.manifest_file  = "main.pp"
    puppet.options = "--verbose"
  end
end
