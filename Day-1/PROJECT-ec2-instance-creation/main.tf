provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0ae8f15ae66fe8cda"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    key_name = "aws_loginx"
}