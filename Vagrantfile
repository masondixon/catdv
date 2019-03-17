Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp-vagrant/centos-7.4"
  config.vm.provision "ansible" do |ansible|
  	ansible.verbose = "v"
  	ansible.playbook = "playbook.yml"
  end
end
