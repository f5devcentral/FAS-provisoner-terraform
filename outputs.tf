
output "my_key" {
   value = "${aws_key_pair.demo.key_name}.pem"
 }
output "ec2_ip" {
   value = "${aws_instance.fas.public_ip}"
 }

 output "F5_IP" {
  value = aws_eip.f5.public_ip
}

output "F5_Password" {
  value = random_string.password.result
}

output "f5_ui" {
  value = "https://${aws_eip.f5.public_ip}:8443"
}


output "To_SSH_into_fas_ubuntu" {
  value =  "ssh -i ${aws_key_pair.demo.key_name}.pem ubuntu@${aws_instance.fas.public_ip}"
}


