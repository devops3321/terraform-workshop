resource "aws_instance" "myserver"{
	ami = "YOUR_AMI_ID"
	instance_type = "t2.micro"
	key_name = aws_key_pair.syne-lab-terra.key_name
	tags = {
		Name = "Terraform Lab for Remote Provisoner"
	}
	vpc_security_group_ids = [aws_security_group.mysg.id]
	connection {
		type = "ssh"
		user = "ubuntu"
		private_key = file("YOUR_KEY_FILE_NAME")
		host = self.private_ip
	}
	provisioner "file" {
		source = "test.html"
		destination = "/home/ubuntu/index.html"
	}
	provisioner "remote-exec" {
		inline = [
			"sudo apt-get update && sudo apt-get install apache2 -y",
			"sudo mv /home/ubuntu/index.html /var/www/html/"
		]
	}
}