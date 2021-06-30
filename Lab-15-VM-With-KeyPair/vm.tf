resource "aws_key_pair" "syne-lab-terra"{
	key_name = "YOUR_KEY_PAIR_NAME"
	public_key = file("YOUR_KEY_FILE_NAME.pub")
}
resource "aws_instance" "myserver"{
	ami = "YOUR_AMI_ID"
	instance_type = "t2.micro"
	key_name = aws_key_pair.syne-lab-terra.key_name
	tags = {
		Name = "Terraform Lab with Custom Key"
	}
}