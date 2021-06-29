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