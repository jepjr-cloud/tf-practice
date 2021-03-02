variable "region_az" {
  type    = string
  default = "us-east-1a"
}

variable "ami_id" {
  description = "ID of ec2 ami"
  type = string
  default = "ami-047a51fa27710816e"
}