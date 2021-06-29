output "vm_public_ip"{
    description = "Display the public ip of server"
    value = aws_instance.myserver.public_ip
}
output "object_url"{
	description = "URL"
	value = "https://${aws_s3_bucket.mybucket.bucket_domain_name}/${aws_s3_bucket_object.myobject.key}"
}