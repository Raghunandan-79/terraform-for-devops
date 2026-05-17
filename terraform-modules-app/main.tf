module "dev-infra" {
  source = "./infra-app"
  env = "dev"
  bucket_name = "raghu-infra-app-bucket"
  instance_count = 1
  instance_type = "t2.micro"
  ec2_ami_id = "ami-0fe18bc3cfa53a248"
  ec2_root_storage_size = 10
  hash_key = "studentID"
}

module "prd-infra" {
  source = "./infra-app"
  env = "prd"
  bucket_name = "raghu-infra-app-bucket"
  instance_count = 2
  instance_type = "t2.micro"
  ec2_ami_id = "ami-0fe18bc3cfa53a248"
  ec2_root_storage_size = 10
  hash_key = "studentID"
}

module "stg-infra" {
  source = "./infra-app"
  env = "stg"
  bucket_name = "raghu-infra-app-bucket"
  instance_count = 1
  instance_type = "t2.small"
  ec2_ami_id = "ami-0fe18bc3cfa53a248"
  ec2_root_storage_size = 10
  hash_key = "studentID"
}