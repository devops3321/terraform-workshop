resource "aws_s3_bucket" "mybucket"{
	bucket = var.storage_name
	acl = var.acl_type
	depends_on = [
		aws_instance.myserver
	]
}
resource "aws_instance" "myserver"{
	ami = "ami-090717c950a5c34d3"
	instance_type = "t2.micro"
	key_name = aws_key_pair.syne-lab-terra.key_name
	tags = {
		Name = "Terraform Lab with Custom Key"
	}
	vpc_security_group_ids = [aws_security_group.mysg.id]
}
resource "aws_security_group" "mysg" {
  name        = "Custom Security Group"
  ingress {
    description      = "SSH access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

