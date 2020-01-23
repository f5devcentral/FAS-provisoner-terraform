
output "To_SSH_into_fas_ubuntu" {
  value =  "ssh -i ${aws_key_pair.demo.key_name}.pem ubuntu@${aws_instance.fas.public_ip}"
}

