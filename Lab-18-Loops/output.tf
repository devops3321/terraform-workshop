output "endpoints"{
    description = "Endpoints of S3 Bucket"
    value = values(aws_s3_bucket.mybucket)[*].bucket_domain_name
}