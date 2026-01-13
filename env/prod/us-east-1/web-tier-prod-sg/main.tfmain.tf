provider "aws" {
  region = var.aws_region
}

module "web_sg" {
  source = "./modules/web_sg"

  name        = "web-tier-prod-sg"
  environment = "prod"
  vpc_id      = var.vpc_id

  ssh_cidrs = ["203.0.113.0/24"]

  http_cidrs  = ["0.0.0.0/0"]
  https_cidrs = ["0.0.0.0/0"]
}