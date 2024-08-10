provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  region="us-east-1"
  ami_value = "ami-0ae8f15ae66fe8cda" # replace this
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-08a9c5f2b0500687f" # replace this
}