terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.44.0"
    }
  }

    # below is used when using remote infra

#   backend "s3" {
#     bucket = "raghu-state-bucket"
#     key = "terraform.tfstate"
#     region = "us-east-2"
#     dynamodb_table = "raghu-state-table"
#   }
}