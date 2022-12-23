module "ec2_nginx" {
    source = "terraform-aws-modules/ec2-instance/aws"
    version = "2.17.0"
    name = "${local.name}-nginx"
    ami = data.aws_ami.amzlinux2.id
    instance_type = var.instance_type
    key_name = var.instance_keypair
    vpc_security_group_ids = [module.public_nginx_sg.this_security_group_id]
    subnet_id = module.vpc.public_subnets[1]
    user_data = file("${path.module}/nginx-install.sh")
    tags = local.common_tags
}
