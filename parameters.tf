resource "aws_ssm_parameter" "lb_arn" {
  name  = "/linuxtips/ecs/lb/id"
  value = aws_lb.main.arn
  type  = "String"
}

resource "aws_ssm_parameter" "lb_listener" {
  name  = "/linuxtips/ecs/lb/listener"
  value = aws_lb_listener.main.arn
  type  = "String"
}

resource "aws_ssm_parameter" "lb_internal_arn" {
  name  = "/linuxtips/ecs/lb/internal/id"
  value = aws_lb.internal.arn
  type  = "String"
}

resource "aws_ssm_parameter" "lb_internal_listener" {
  name  = "/linuxtips/ecs/lb/internal/listener"
  value = aws_lb_listener.internal.arn
  type  = "String"
}

resource "aws_ssm_parameter" "cloudmap" {
  name  = "/linuxtips/ecs/cloudmap/namespace"
  value = aws_service_discovery_private_dns_namespace.main.id
  type  = "String"
}

resource "aws_ssm_parameter" "service_connect" {
  name  = "/linuxtips/ecs/service_connect/namespace"
  value = aws_service_discovery_private_dns_namespace.sc.id
  type  = "String"
}

resource "aws_ssm_parameter" "service_connect_name" {
  name  = "/linuxtips/ecs/service_connect/name"
  value = aws_service_discovery_private_dns_namespace.sc.name
  type  = "String"
}

resource "aws_ssm_parameter" "vpc_link" {
  name  = "/linuxtips/ecs/vpc_link/id"
  value = aws_api_gateway_vpc_link.main.id
  type  = "String"
}
