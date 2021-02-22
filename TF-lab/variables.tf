variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "ami_id" {
  type = string
  default = "ami-047a51fa27710816e"
}

variable "region_az" {
  type = string
  default = "us-east-1a"
}