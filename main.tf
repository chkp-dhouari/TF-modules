module "prod-compute" {
  source = "./blueprint/compute"

  image = data.aws_ami.ami.id
  type = var.prod-type
  az = var.az[2]
}

module "prod-IAM"{
  source = "./blueprint/IAM"

  username = var.prod-user
}

module "prod-network"{
  source = "./blueprint/network"

  vpc = var.vpc-prod
  sub = var.sub
  vpc-id = module.prod-network.vpc-id

}

module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"

  # insert the 2 required variables here
}


