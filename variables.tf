# This file is the variable file which can be customized as per your deployment. 

# Select the region required, make sure the AMI is valid foe that region.
variable "region" {
  description = "Regions supported"
  default     = "us-west-2"
}

# This prefix is used for different students, student1, student2 .... will corresponds to different workshops, you can use the configuration for multiple workshop.

variable "prefix" {
  description = "prefix for resources created"
  default     = "Student-#"
}

#This is the private IP for the fas ubuntu server, fas is the ubuntu server which will have terraform tool 


variable "private_ip_fas" {
  description = "private ip for fas"
  default = "10.0.0.100"
}

# This is private IP for the F5 device
variable "private_ip_f5" {
  description = "private ip for nginx"
  default = "10.0.0.200"

}
#How many nginx servers you need as backend? the count will determine the same.
variable "nginx_instance_count" {
  description = "nginx instance count"
  default = 2
}

#This is the private IP addresses of the nginx servers, the first will get the ip address 10.0.0.172
variable "private_ip_nginx" {
  description = "private ip for nginx"
  type = list(string)
  default = ["10.0.0.172","10.0.0.173"]
}

