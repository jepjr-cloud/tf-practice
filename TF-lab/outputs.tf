#--------------------------------------------------
# EC2
#--------------------------------------------------

output "id" {
  value       = module.ec2.id
  description = "id of the ec2 instance"
}

output "arn" {
  value       = module.ec2.arn
  description = "ARN of the ec2 instance"
}

output "availability_zone" {
  value       = module.ec2.availability_zone
  description = "az of the ec2 instance"
}

output "private_ip" {
  value       = module.ec2.private_ip
  description = "private ip of the ec2 instance"
}

#--------------------------------------------------
# EBS
#--------------------------------------------------

output "ebs_id" {
  value       = module.ebs.id
  description = "id of the ebs volume (gb)"
}

output "ebs_arn" {
  value       = module.ebs.arn
  description = "ARN of the ebs volume (gb)"
}

output "ebs_size" {
  value       = module.ebs.size
  description = "size of the ebs volume (gb)"
}

#--------------------------------------------------
# CloudWatch
#--------------------------------------------------

output "cw_alarm_ec2_id" {
  value = module.metric_alarm.cloudwatch_metric_alarm_id
  description = "The ID of the Cloudwatch metric alarm."
}

output "cw_alarm_ec2_arn" {
  value = module.metric_alarm.cloudwatch_metric_alarm_arn
  description = "The ARN of the Cloudwatch metric alarm."
}