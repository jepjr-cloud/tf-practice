provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/home/joaoeduardo/.aws/credentials"
}

resource "aws_instance" "ec2" {
  ami               = var.ami_id
  instance_type     = var.instance_type
  availability_zone = var.region_az

  tags = {
    "Name" = "tf-ec2-test"
  }
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
  instance_id = aws_instance.ec2.id
  volume_id   = aws_ebs_volume.ebs.id
  device_name = "/dev/sdh"
}

