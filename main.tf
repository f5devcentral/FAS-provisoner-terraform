provider "aws" {
  region = "us-west-2"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

# Generate a tfvars file for AS3 installation
data "template_file" "tfvars" {
  template = file("terraform.tfvars.example")
  vars = {
    address     = aws_eip.f5.public_ip
    username    = "admin"
    password    = random_string.password.result
  }
}

resource "local_file" "tfvars" {
  content  = data.template_file.tfvars.rendered
  filename = "terraform.tfvars"
}

