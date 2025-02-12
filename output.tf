output "load_balancer_dns" {
  value = aws_lb.main.dns_name
}

output "internal_load_balancer_dns" {
  value = aws_lb.internal.dns_name
}

output "lb_ssm_arn" {
  value = aws_ssm_parameter.lb_arn.id
}

output "lb_listener_ssm_arn" {
  value = aws_ssm_parameter.lb_listener.id
}

output "cloudmap_ssm" {
  description = "Id do namespace de service discovery do cluster"
  value       = aws_ssm_parameter.cloudmap.id
}
