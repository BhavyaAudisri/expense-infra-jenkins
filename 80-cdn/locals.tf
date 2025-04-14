locals{
    https_certificate_arn = data.aws_ssm_parameter.alb_ingress_listener_arn.value
}