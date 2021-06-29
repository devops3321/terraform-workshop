resource "aws_instance" "myserver"{
	ami = "ami-090717c950a5c34d3"
	instance_type = "t2.micro"
	tags = {
		Name = var.vm_name
	}
    count = var.vm_count
}