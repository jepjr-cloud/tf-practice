provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/home/joaoeduardo/.aws/credentials"
}

module "ec2" {
  source = "/home/joaoeduardo/Desktop/tf-practice/modules/ec2-module"
  
  ami = var.ami_id
  name = "joao"
}

module "ebs" {
  source = "/home/joaoeduardo/Desktop/tf-practice/modules/ebs-module"
  
  availability_zone = var.region_az
  name = "joao"
}

resource "aws_volume_attachment" "ec2-ebs-attach" {
  instance_id = module.ec2.id
  volume_id   = module.ebs.id
  device_name = "/dev/sdh"
}

