provider "aws"{
	region = "YOUR_REGION_ID"
}
variable "res_name"{
	default = "YOUR_RESOURCE_NAME"
}
resource "aws_instance" "myserver"{
	ami = "YOUR_AMI_ID"
	instance_type = "t2.micro"
	tags = {
		Name = var.res_name
	}
}
resource "aws_s3_bucket" "mybucket"{
	bucket = var.res_name
	acl = "public-read"
}
