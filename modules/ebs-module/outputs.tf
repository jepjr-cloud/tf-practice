output "id" {
  value       = aws_ebs_volume.ebs.id
  description = "id of the ebs volume (gb)"
}

output "arn" {
  value       = aws_ebs_volume.ebs.arn
  description = "ARN of the ebs volume (gb)"
}

output "size" {
  value       = aws_ebs_volume.ebs.size
  description = "size of the ebs volume (gb)"
}

output "availability_zone" {
  value       = aws_ebs_volume.ebs.availability_zone
  description = "az of the ebs volume"
}

output "type" {
  value = aws_ebs_volume.ebs.type
  description = "the type of EBS volume"
}