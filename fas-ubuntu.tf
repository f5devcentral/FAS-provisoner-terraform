resource "aws_instance" "fas" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "m5.large"
  private_ip             = "10.0.0.100"
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [aws_security_group.fas.id]
  iam_instance_profile   = aws_iam_instance_profile.fas.name
  user_data              = file("terraform-installer.sh")
  key_name               = aws_key_pair.demo.key_name
  tags = {
    Name = "${var.prefix}-ubuntu"
    Env  = "fas"
  }
}

