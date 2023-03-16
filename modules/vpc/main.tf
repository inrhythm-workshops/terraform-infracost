module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.tags.prefix}_vpc"
  cidr = var.env_cidr_block

  azs = var.azs
  private_subnets = [
    cidrsubnet(var.env_cidr_block, 8, 1),
    cidrsubnet(var.env_cidr_block, 8, 2),
    cidrsubnet(var.env_cidr_block, 8, 3)
  ]
  public_subnets = [
    cidrsubnet(var.env_cidr_block, 8, 4),
    cidrsubnet(var.env_cidr_block, 8, 5),
    cidrsubnet(var.env_cidr_block, 8, 6)
  ]

  enable_nat_gateway = true
  single_nat_gateway = true

  enable_dns_hostnames = true
  enable_dns_support   = true
}