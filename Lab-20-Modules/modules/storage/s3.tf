resource "aws_s3_bucket" "mybucket"{
	bucket = var.storage_name
	acl = "public-read"
}
