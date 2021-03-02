provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/home/joaoeduardo/.aws/credentials"
}

module "ec2" {
  source = "/home/joaoeduardo/Desktop/tf-practice/modules/ec2-module"
  name = "tf-ec2-practice"
  ami = var.ami_id
}

resource "aws_ebs_volume" "ebs" {
  type              = "gp2"
  size              = 35
  availability_zone = var.region_az

  tags = {
    "Name" = "tf-ebs-test"
  }
}

resource "aws_volume_attachment" "ec2-ebs-attach" {
  instance_id = module.ec2.id
  volume_id   = aws_ebs_volume.ebs.id
  device_name = "/dev/sdh"
}

