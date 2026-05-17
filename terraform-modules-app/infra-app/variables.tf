variable "env" {
  description = "This is the environment for my infrastructure"
  type = string
}

variable "bucket_name" {
  description = "This is the bucket name for my infrastructure"
  type = string
}

variable "instance_count" {
  description = "This is the number of ec2 instance"
  type = number
}

variable "instance_type" {
  description = "This is the ec2 instance type"
  type = string
}

variable "ec2_ami_id" {
  description = "This is the ec2 ami id"
  type = string
}

variable "ec2_root_storage_size" {
  description = "This is the root storage size for ec2 instance"
  type = number
}

variable "hash_key" {
  description = "This is the hash key for my dynamodb table"
  type = string
}