provider "aws" {
    region = "us-east-1"
  
}
resource "aws_instance" "my-instance" {
    tags = {
        Name = "my-instance"
    }
    ami = "ami-0df8c184d5f6ae949"
    instance_type = "t2.micro"
    subnet_id = "subnet-061e6ea45636040e5"
    key_name = "aws-login"
  
}