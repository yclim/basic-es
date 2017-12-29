Vagrant.configure("2") do |config|
	config.vm.box = "bento/centos-7.2"
	config.vm.hostname = "server1"
	config.vm.network "forwarded_port", guest: 5601, host: 5601, host_ip: "127.0.0.1" 
	config.vm.network "forwarded_port", guest: 9200, host: 9200, host_ip: "127.0.0.1" 
	config.vm.provision "shell", path: "setup.sh"
	config.vm.provider "virtualbox" do |v|
		v.memory = 8192
		v.cpus = 4
	end
end
