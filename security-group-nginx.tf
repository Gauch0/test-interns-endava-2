module "public_nginx_sg" {
    source = "terraform-aws-modules/security-group/aws"
    version = "3.18.0"
    name = "${local.name}-ngix-sg"
    description = "Security Group Nginx"
    vpc_id = module.vpc.vpc_id
    # Ingress Rules & CIDR BLOCK
    ingress_rules = ["ssh-tcp","http-80-tcp"]
    ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
    # Egress Rule - all-all open
    egress_rules = ["all-all"]
    tags = local.common_tags
}