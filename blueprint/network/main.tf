resource "aws_vpc" "vpc-test" {
  cidr_block = var.vpcplus
}

resource "aws_subnet" "sub" {
  cidr_block = var.subplus
  vpc_id = var.vpc-id
}
