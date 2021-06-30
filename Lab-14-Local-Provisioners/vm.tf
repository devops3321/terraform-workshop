resource "aws_instance" "myserver"{
	ami = "YOUR_AMI_ID"
	instance_type = "t2.micro"
	tags = {
		Name = "Terraform In Action"
	}
	provisioner "local-exec"{
		command = "echo ${self.private_ip} > output.txt"
	}
}