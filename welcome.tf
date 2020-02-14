provider "aws"{
    region   = "ap-south-1"
    access_key = "AKIAZLEEJAUQVZDPSF6R"
    secret_key = "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"
}

// Create VPC
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "TerraformVpc"
  }
}

// Create Subnet

resource "aws_subnet" "main" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Subnet-1"
  }
}