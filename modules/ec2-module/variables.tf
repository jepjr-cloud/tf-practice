variable "instance_count" {
  description = "Number of instances to launch"
  type = string
  default = 1
}

variable "name" {
  description = "Name to be used on all resources as prefix"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start"
  type    = string
  default = "t2.micro"
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type    = string
  default = ""
}

variable "availability_zone" {
  description = "The AZ to start the instance in"
  type    = string
  default = "us-east-1a"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type = map(string)
  default = {}
}

