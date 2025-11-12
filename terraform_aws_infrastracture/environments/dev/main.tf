provider "aws" {
  region = var.region
}

# call vpc module
module "vpc" {
  source              = "../../modules/vpc"
  name                = "team-infra-vpc"
  environment         = "dev"
  cidr_block          = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  availability_zone   = var.availability_zone
}

# call s3 module
module "assets_bucket" {
  source      = "../../modules/s3"
  bucket_name = "team-infra-assets-dev-12345"
  environment = "dev"
  versioning  = true
}

# fetch latest Amazon Linux 2 AMI
data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# call ec2 module
module "web" {
  source        = "../../modules/ec2"
  name          = "web-server"
  environment   = "dev"
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.public_subnet_id
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = var.instance_type
  key_name      = var.key_name
  allowed_ssh_cidr = var.allowed_ssh_cidr
  user_data     = <<-EOF
                #!/bin/bash
                sudo yum update -y
                sudo yum install -y httpd
                echo "Hello from Dev Web Server" > /var/www/html/index.html
                systemctl enable httpd
                systemctl start httpd
                EOF
}
