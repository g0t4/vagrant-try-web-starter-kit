# Steps based on https://developers.google.com/web/fundamentals/tools/setup/setup_kit

# SETUP and UPDATE package sources
apt-get -y update
# adds add-apt-repository
apt-get -y install python-software-properties
add-apt-repository ppa:chris-lea/node.js
apt-get -y update

apt-get -y install ruby1.9.1 
gem install sass

apt-get -y install python g++ make nodejs
npm install -g gulp

cd /vagrant/web-starter-kit
npm install