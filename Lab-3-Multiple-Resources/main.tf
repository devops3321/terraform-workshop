provider "aws"{
	region = "us-west-2"
}
resource "aws_instance" "myserver"{
	ami = "ami-090717c950a5c34d3"
	instance_type = "t2.micro"
	tags = {
		Name = "Terraform In Action"
	}
}
resource "aws_security_group" "mysg" {
  name        = "Custom Security Group"
  ingress {
    description      = "SSH access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = "0.0.0.0/0"
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}
output "vm_public_ip"{
    description = "Display the public ip of server"
    value = aws_instance.myserver.public_ip
}