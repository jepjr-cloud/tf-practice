variable "name" {
  description = "Name to be used on all resources as prefix"
  type        = string
}

variable "availability_zone" {
  description = "The AZ to start the instance in"
  type    = string
  default = "us-east-1a"
}

variable "size" {
  description = "Size of the EBS volume"
  type = string
  default = "20"
}

variable "type" {
  description = "Type of the ebs volume"
  type = string
  default = "gp2"
}