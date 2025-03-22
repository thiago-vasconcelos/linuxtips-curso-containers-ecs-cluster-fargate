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
  description = "Id do namespace de Service Discovery do cluster"
  value       = aws_ssm_parameter.cloudmap.id
}

output "service_connect_ssm" {
  description = "Id do namespace de Service Connect do cluster"
  value       = aws_ssm_parameter.service_connect.id
}

output "service_connect_name_ssm" {
  description = "Nome do Service Connect do cluster"
  value       = aws_ssm_parameter.service_connect_name.id
}

output "vpc_link" {
  description = "ID do VPC Link do Cluster"
  value       = aws_ssm_parameter.vpc_link.id
}