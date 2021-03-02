output "id" {
  value       = aws_instance.ec2.id
  description = "id of the ec2 instance"
}

output "arn" {
  value       = aws_instance.ec2.arn
  description = "ARN of the ec2 instance"
}

output "availability_zone" {
  value       = aws_instance.ec2.availability_zone
  description = "az of the ec2 instance"
}

output "private_ip" {
  value       = aws_instance.ec2.private_ip
  description = "private ip of the ec2 instance"
}