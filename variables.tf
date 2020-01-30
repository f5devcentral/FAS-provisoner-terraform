variable "prefix" {
  description = "prefix for resources created"
  default     = "fas-provsioner"
}
/*variable "private_ip_nginx" {
  description = "private ip for nginx"
  default = "10.0.0.172"

}*/
variable "private_ip_f5" {
  description = "private ip for nginx"
  default = "10.0.0.200"

}
variable "nginx_instance_count" {
  description = "nginx instance count"
  default = 2
}

variable "private_ip_nginx" {
  description = "private ip for nginx"
  type = list(string)
  default = ["10.0.0.172","10.0.0.173"]
}

