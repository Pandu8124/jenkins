resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  acl    = var.acl

  tags = {
    Name = var.bucket_name
    Env  = var.environment
  }

  versioning {
    enabled = var.versioning
  }
}
