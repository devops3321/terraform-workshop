provider "aws" {
	region = "us-west-2"
}
resource "aws_s3_bucket_object" "myobject"{
	bucket = aws_s3_bucket.mybucket.id
	content = "SomeSample Data"
	content_type = "text/html"
	key = "hello.html"
	acl = "public-read"
}
resource "aws_s3_bucket" "mybucket"{
	bucket = "thinknyx-terraform-lab"
	acl = "public-read"
}
output "object_url"{
	description = "URL"
	value = "https://${aws_s3_bucket.mybucket.bucket_domain_name}/${aws_s3_bucket_object.myobject.key}"
}
