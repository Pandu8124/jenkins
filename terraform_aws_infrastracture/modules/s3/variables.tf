variable "bucket_name" { type = string }
variable "environment" { type = string }
variable "acl" { type = string, default = "private" }
variable "versioning" { type = bool, default = false }
