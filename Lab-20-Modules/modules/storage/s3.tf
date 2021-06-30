resource "aws_s3_bucket" "mybucket"{
	bucket = "terralab-demo-440"
	acl = "public-read"
}
