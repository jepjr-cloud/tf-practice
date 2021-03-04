provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/home/joaoeduardo/.aws/credentials"
}

#-----------------
# EC2
#-----------------

module "ec2" {
  source = "/home/joaoeduardo/Desktop/tf-practice/modules/ec2-module"
  
  ami = var.ami_id
  name = "joao"
}

#-----------------
# EBS
#-----------------

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

#-----------------
# CloudWatch
#-----------------

module "metric_alarm" {
  source = "/home/joaoeduardo/Desktop/tf-practice/modules/cloudwatch-module"


  alarm_name = "EC2-CPU-MONITORING"
  alarm_description = "Cloudwatch metric for EC2 CPU monitoring"
  metric_name = "CPUUtilization"
  namespace = "AWS/EC2"
 
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods = "2"
  threshold = "10"
  statistic = "Average"

  dimensions = {
    InstanceId = module.ec2.id
  }

}