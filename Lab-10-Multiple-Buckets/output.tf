output "link_of_all"{
    descritpion = "Bucket Link"
    value = aws_s3_bucket.mybucket.*.bucket_domain_name
}