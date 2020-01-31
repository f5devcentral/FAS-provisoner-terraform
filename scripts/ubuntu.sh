#!/bin/bash
  
#Get IP
local_ipv4="$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)"

#Utils
sudo apt-get install unzip
sleep 20
sleep 20
cd /home/ubuntu
git clone https://github.com/f5devcentral/f5-as3-usecases.git
mv terraform.tfvars ~/f5-as3-usecases
cd /tmp
wget https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_amd64.zip
unzip terraform_0.12.20_linux_amd64.zip
mv terraform /usr/local/bin
WantedBy=multi-user.target
EOF

