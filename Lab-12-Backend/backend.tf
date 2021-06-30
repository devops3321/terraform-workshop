terraform {
	backend "s3" {
		bucket = "YOUR_BACKEND_BUCKET_NAME"
		region = "YOUR_BACKEND_BUCKET_REGION"
		key = "day3/lab11.tfstate"
	}
}
