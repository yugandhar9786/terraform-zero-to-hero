variable "instance_type" {
    description = "instance type"
    type = string
    default  = "t2.micro" 

}
variable ami_id {
    description = "ami id"
    type = string
    default = "ami-04b4f1a9cf54c11d0"

}
variable key_name {
    description = "key-name"
    type = string
    default = "aws-login"

}
provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "my-instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name

  
}
output "public_ip" {
    description = "value of public ip address"
    value = aws_instance.my-instance.public_ip
}
output "private_ip" {
    description = "value of private ip address"
    value = aws_instance.my-instance.private_ip
}
output "instance_id" {
    description = "value of instance id"
    value =aws_instance.my-instance.id
}
