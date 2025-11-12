terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-REPLACE"
    key            = "global/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks-REPLACE"
    encrypt        = true
  }
}
