output "s3_url"{
    value = aws_s3_bucket.mybucket.bucket_domain_name
}