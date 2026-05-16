resource "aws_s3_bucket" "remote_s3" {
  bucket = "raghu-state-bucket"

  tags = {
    Name = "raghu-state-bucket"
  }
}