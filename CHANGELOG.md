	# file bootstrap.sh 

#for update 
apt-get update
# for install node version 12 
wget -qO- https://deb.nodesource.com/setup_12.x | sudo -E bash -
# for install nodejs
apt-get install -y nodejs
# for install nginx 
apt-get install nginx -y


	# file Vagrantfille

# for use bootstrap.sh
config.vm.provision :shell, path: "bootstrap.sh"
# for redirect 
config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
config.vm.network "forwarded_port", guest: 22, host: 2221, host_ip: "127.0.0.1"

