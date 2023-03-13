provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "miservidor" {
  ami           = "ami-006dcf34c09e50022"
  instance_type = "t2.micro"
}

variable "vpc_id" {}

data "aws_vpc" "selected" {
  id = var.vpc_id
}

#uso la subred defaultsubpub que existe en mi cuenta AWS
resource "aws_default_subnet" "defaultsubpub" {
  availability_zone = "us-east-1a"

  tags = {
    Name = "Default subnet for us-east-1"
  }
}