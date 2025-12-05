terraform {
	required_providers {
		aws = {
		source = "hashicorp/aws"
		version = "~>6.0"
}
}
}

provider "aws" {
	region = "us-east-1"
}

resource "aws_instance" "server-1" {
  instance_type = "t3.micro"
  ami           = "ami-0ecb62995f68bb549"
  key_name = "devops"
}
