terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws"{
  profile = "default"
  region  = "us-west-2"
  access_key = "AKIAW2MCYKTV3JX4FIH5"
  secret_key = "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"

}
resource "aws_instance" "app_server" {
  ami = "ami-0ecc74eca1d66d8a6"
  instance_type = "t2.micro"
  key_name = "iac-alura" 
  tags = {
    Name = "Primeira instancia"
  }
}