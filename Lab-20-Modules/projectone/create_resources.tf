module "creating_a_vm"{
    source = "../modules/vm"
}
module "create_s3_bucket"{
    source = "../modules/storage"
    storage_name = "terraform_demo-bucket"
}