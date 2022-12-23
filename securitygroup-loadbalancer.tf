module "loadbalancer_sg" {
    source = "terraform-aws-modules/security-group/aws"
    version = "3.18.0"
    name = "${local.name}-loadbalancer-sg"
    description = "Security Group Loadbalancer"
    vpc_id = module.vpc.vpc_id
    # Ingress Rules & CIDR BLOCK
    ingress_rules = ["http-80-tcp"]
    ingress_cidr_blocks = ["0.0.0.0/0"]
    # Egress Rule - all-all open
    egress_rules = ["all-all"]
    tags = local.common_tags

    # Open to CIDRs Blocks (rule or from_port+to_port+protocol+description)

    ingress_with_cidr_blocks = [
        {
            from_port = 81
            to_port = 81
            protocol = 6
            description = "Allow Port 81 from internet"
            cidr_blocks = "0.0.0.0/0"
        },
    ]
}