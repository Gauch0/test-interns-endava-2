module "vpc" {
    source = "terraform-aws-modules/vpc/aws"
    version = "2.78.0"

    # VPC Basic Details

    name                    = "${local.name}-${var.vpc_name}"
    cidr                    = var.vpc_cidr_block
    public_subnets          = var.vpc_public_subnets
    private_subnets         = var.vpc_private_subnets
    azs                     = var.vpc_availability_zones 

    # NAT Gateway

    enable_nat_gateway      = var.vpc_enable_nat_gateway
    single_nat_gateway      = var.vpc_single_nat_gateway 

    # VPC DNS Parameters

    enable_dns_hostnames    = true 
    enable_dns_support      = true
    enable_dhcp_options     = true

    # Enpoints

    # enable_s3_endpoint      = true
    # enable_apigw_endpoint   = true
    # apigw_endpoint_private_dns_enabled = true
    # apigw_endpoint_subnet_ids = var.vpc_private_subnets

    # Aditional Tags to Subnets

    public_subnet_tags = {
        type = "Public Subnets"
    }

    private_subnet_tags = {
        type = "Private Subnets"
    }
}   