# main configaration file must be all the configarations \

resource "aws_instance" "my_ec2" {
    ami          = "ami-0dee22c13ea7a9a67"
    instance_type = var.instance_type

}