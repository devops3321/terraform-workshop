terraform {
	backend "s3" {
		bucket = "YOUR_BACKEND_BUCKET_NAME"
		region = "YOUR_BACKEND_BUCKET_REGION"
		key = "day3/lab14.tfstate"
		dynamodb_table = "YOUR_DYNAMODB_TABLE_NAME"
	}
}
