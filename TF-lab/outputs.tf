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
  value       = aws_ebs_volume.ebs.id
  description = "id of the ebs volume (gb)"
}

output "ebs_arn" {
  value       = aws_ebs_volume.ebs.arn
  description = "ARN of the ebs volume (gb)"
}

output "ebs_size" {
  value       = aws_ebs_volume.ebs.size
  description = "size of the ebs volume (gb)"
}


