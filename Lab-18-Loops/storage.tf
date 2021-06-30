resource "aws_s3_bucket" "mybucket"{
    for_each = toset(var.storage_names)
	bucket = each.value
	acl = var.acl_type
}