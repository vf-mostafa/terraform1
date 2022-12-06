resource "aws_instance" "ansible" {
  count = 3
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  tags = {
    Name = "ansible-${count.index}"
  }
  key_name = "devops"
#  security_groups = [aws_security_group.vf-sg.name]
}

output "ansible-servers" {
  value = [aws_instance.ansible[*].public_ip]
}
