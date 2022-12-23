# Define Local Values in Terraform
locals {
  owners = var.prefix_divsion
  environment = var.environment
  name = "${var.prefix_divsion}-${var.environment}"
  #name = "${local.owners}-${local.environment}"
  common_tags = {
    owners = local.owners
    environment = local.environment
  }
} 
