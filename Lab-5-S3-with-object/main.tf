provider "aws" {
	region = "YOUR_REGION"
        access_key = "YOUR_ACCESS_KEY_ID"
	    secret_key = "YOUR_SECRET_ACCESS_KEY"
}
resource "aws_s3_bucket_object" "myobject"{
	bucket = aws_s3_bucket.mybucket.id
	source = "test.html"
	key = "hello.html"
	acl = "public-read"
}
resource "aws_s3_bucket" "mybucket"{
	bucket = "YOUR_BUCKET_NAME"
	acl = "public-read"
}
output "object_url"{
	description = "URL"
	value = "https://${aws_s3_bucket.mybucket.bucket_domain_name}/${aws_s3_bucket_object.myobject.key}"
}

