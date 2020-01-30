resource "aws_instance" "nginx" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.micro"
  private_ip             = var.private_ip_nginx[count.index]
  subnet_id              = module.vpc.public_subnets[0]
  user_data              = file("./scripts/nginx.sh")
  vpc_security_group_ids = [aws_security_group.nginx.id]
  count                  = var.nginx_instance_count
  iam_instance_profile   = aws_iam_instance_profile.fas.name
  key_name               = aws_key_pair.demo.key_name
  tags = {
    Name = "${var.prefix}-nginx${count.index + 1}"
    Env  = "fas"
  }
}

