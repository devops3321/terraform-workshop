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
output "vm_public_ip"{
    description = "Display the public ip of server"
    value = aws_instance.myserver.public_ip
}