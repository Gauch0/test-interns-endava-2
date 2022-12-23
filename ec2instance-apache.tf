module "ec2_apache" {
    source = "terraform-aws-modules/ec2-instance/aws"
    version = "2.17.0"
    name = "${local.name}-apache"
    ami = data.aws_ami.amzlinux2.id
    instance_type = var.instance_type
    key_name = var.instance_keypair
    vpc_security_group_ids = [module.public_apache_sg.this_security_group_id]
    subnet_id = module.vpc.public_subnets[0]
    user_data = file("${path.module}/apache-install.sh")
    tags = local.common_tags
}
