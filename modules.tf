module "vpc" {
  source = "./modules/vpc"

  env_cidr_block = var.env_cidr_block
  azs            = data.aws_availability_zones.available.names
  tags           = local.tags
}

# ElasticBeanstalk Applications
module "eb_setup_workshop" {
  source = "./modules/eb/setup"

  eb_app_name        = "${var.eb_workshop_name}${var.gen_id}"
  eb_app_description = var.eb_workshop_description
  vpc_id             = module.vpc.vpc_id

  tags = local.tags
}

module "eb_workshop" {
  source = "./modules/eb"

  aws_region          = var.aws_region
  account_id          = local.account_id
  vpc_id              = module.vpc.vpc_id
  vpc_subnets         = module.vpc.vpc_public_subnets
  vpc_private_subnets = module.vpc.vpc_public_subnets

  eb_app_name          = module.eb_setup_workshop.eb_app_name
  eb_sg                = module.eb_setup_workshop.eb_sg.id
  eb_ec2_ssm_role_name = module.eb_setup_workshop.elasticbeanstalk-EC2andSSM-role-instance-profile.name
  eb_service_role_name = module.eb_setup_workshop.elasticbeanstalk-service-role-name
  eb_solution_stack    = var.eb_solution_stack
  eb_min_instances     = var.eb_workshop_min_instances
  eb_max_instances     = var.eb_workshop_max_instances
  eb_app_type          = var.eb_workshop_app_type
  eb_app_settings      = var.eb_workshop_settings

  tags = local.tags
}

resource "random_id" "gen_id" {
  byte_length = 6
}

# S3
module "s3" {
  source = "./modules/s3"

  irworkshop_domain = "irworkshop${random_id.gen_id.hex}"
  tags              = local.tags
}