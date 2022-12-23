output "lb_arn" {
    description = "The ID and ARN of the load balancer we created"
    value = module.alb.this_lb_arn
}