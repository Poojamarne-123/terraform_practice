terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.12.0"
    }
  }
}
resource "aws_instance" "example" {
  ami           = "ami-08982f1c5bf93d976"
  instance_type = "t2.micro"
  count = 3

  tags = {
    Name = "HelloWorld-${count.index}"
  }
}
