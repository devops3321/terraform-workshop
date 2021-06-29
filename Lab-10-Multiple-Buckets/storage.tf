resource "aws_s3_bucket" "mybucket"{
	bucket = format("%s-lab-%s",var.my_name,count.index + 1)
	acl = "private"
    count = var.bucket_count
}
