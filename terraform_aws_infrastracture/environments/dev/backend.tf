terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-REPLACE"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-locks-REPLACE"
    encrypt        = true
  }
}
