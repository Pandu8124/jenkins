variable "name" { type = string }
variable "environment" { type = string }
variable "vpc_id" { type = string }
variable "subnet_id" { type = string }
variable "ami" { type = string }
variable "instance_type" { type = string }
variable "key_name" { type = string }
variable "allowed_ssh_cidr" { type = string, default = "0.0.0.0/0" }
variable "user_data" { type = string, default = "" }
