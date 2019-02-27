variable "aws_region" {
  description = "Region for the VPC"
  default = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for the public subnet"
  default = "10.0.1.0/24"
}


variable "ami" {
  description = "AMI for EC2"
  default = "ami-0ac019f4fcb7cb7e6"
}



variable "key_pair"{
description = "SSH Public Key Path"
default="awsKeyPair"
}

