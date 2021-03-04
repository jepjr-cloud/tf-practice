resource "aws_ebs_volume" "ebs" {
  type              = var.type
  size              = var.size
  availability_zone = var.availability_zone

  tags = {
    "Name" = "${var.name}-ebs-tf" 
  }
}