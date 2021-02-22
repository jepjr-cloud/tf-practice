#--------------------------------------------------
# EC2
#--------------------------------------------------

output "ec2_id" {
  value       = aws_instance.ec2.id
  description = "id of the ec2 instance"
}

output "ec2_arn" {
  value       = aws_instance.ec2.arn
  description = "ARN of the ec2 instance"
}

output "ec2_az" {
  value       = aws_instance.ec2.availability_zone
  description = "az of the ec2 instance"
}

output "ec2_private_ip" {
  value       = aws_instance.ec2.private_ip
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


