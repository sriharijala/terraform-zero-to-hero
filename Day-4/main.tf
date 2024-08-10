provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "srihari" {
  instance_type = "t2.micro"
  ami = "ami-0ae8f15ae66fe8cda" # change this
  subnet_id = "subnet-08a9c5f2b0500687f" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "srihari-s3-demo-xyz" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

