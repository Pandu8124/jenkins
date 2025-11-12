region             = "ap-south-1"
vpc_cidr           = "10.10.0.0/16"
public_subnet_cidr = "10.10.1.0/24"
availability_zone  = "ap-south-1a"
instance_type      = "t3.micro"
key_name           = "your-aws-keypair-name"
allowed_ssh_cidr   = "203.0.113.45/32" # YOUR IP for SSH
