#!/bin/bash
cd /vagrant/
yum update
yum install -y vim git tree wget curl unzip screen
yum -y groupinstall "Development Tools"
cd /usr/src
if [ -f "/vagrant/node-v0.10.4.tar.gz" ]
then
  echo "node-v0.10.4.tar.gz exists"
else
  wget http://nodejs.org/dist/v0.10.4/node-v0.10.4.tar.gz
fi

tar zxf node-v0.10.4.tar.gz
cd node-v0.10.4
./configure
make 
make install 
#PATH
echo "export PATH=$PATH:/usr/local/git/bin:/usr/local/bin" >> /etc/bashrc
npm -g install express express-generator supervisor
