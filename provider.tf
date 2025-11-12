# Provider or plugins like terraform interact with cloud platform (Aws, Azure,Gcp) or
 # Services (Github, Docker, Kubernetes)

#example:- 

provider "aws" {
    region = "south-east-1"
}

#variable Accessing Example:
provider "aws" {
    region = var.region
}