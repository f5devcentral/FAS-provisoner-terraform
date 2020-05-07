# FAS-provisoner-terraform
- This repository is for deploying infrastructure in AWS Cloud, this will deploy F5 BIG-IP and two NGINX Servers as well one
ubuntu server (Jump box). 
- This will also download latest copy of terraform on your  local machine, it will overwrite your existing terraform binary
- This will make a ubuntu server ready for use to play around with as3 use cases which can be deployed using F5 BIG-IP terraform provider

# How to use the Repo ?

1. git clone this repo using ```git clone https://github.com/f5devcentral/FAS-provisoner-terraform.git```
2. Change directory ```cd FAS-provisoner-terraform```  and run ``` ./fas-provisoner.sh ``` (This will install terraform on your  local machine )
3. Next you can ssh into the jump box by ```ssh -i terraform-20200507004132597400000001.pem ubuntu@X.X.X.X ```
4. USe git clone to clone another repo for as3 ``` git clone https://github.com/f5devcentral/f5-as3-usecases.git```
5. Change directory to ```cd f5-as3-usecases/``` now we are entering into the AS3 Deployment
6. Install terraform on jump box for AS3 deployment ```./install-terraform.sh ```
7. Run the following ``` terraform init``` and ```terraform plan```
