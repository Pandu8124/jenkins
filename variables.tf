# variable makes terrafom configuration resuable and flexible They allow you to pass the dynamic values.
#

# Example:

variable "instance_type"{
    default = "t2.micro"
}

variable "region"{
    default = "ap-south-1"
}