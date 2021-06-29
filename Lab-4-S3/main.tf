provider "aws" {
	region = "us-west-2"
        access_key = "YOUR_ACCESS_KEY_ID"
	    secret_key = "YOUR_SECRET_ACCESS_KEY"
}
resource "aws_s3_bucket" "mybucket"{
	bucket = "YOUR_BUCKET_NAME"
	acl = "public-read"
}
