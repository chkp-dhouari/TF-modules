variable "prod-type" {
  default = "t2.micro"
}

variable "prod-user" {
  default = "john"
}

variable "vpc-prod" {
  default = "172.30.0.0/16"
}

data "aws_ami" "ami" {
  owners = ["amazon"]
  most_recent = true

  filter {
    name = "name"
    values = ["amzn2-ami-hvm-2.0.20200722.0-x86*"]
  }
}

variable "az" {
  default = ["us-east-2a","us-east-2c","us-east-2b"]
}

variable "sub"{
  default = "172.30.10.0/24"

}