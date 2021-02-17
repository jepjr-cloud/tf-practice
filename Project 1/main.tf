provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "/home/joaoeduardo/.aws/credentials"
}

resource "aws_instance" "example" {
  ami = "ami-047a51fa27710816e"
  instance_type = "t2.micro"
}