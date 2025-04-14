data "aws_ssm_parameter" "alb_ingress_listener_arn" {
  name = "/${var.project_name}/${var.environment}/alb_ingress_listener_arn"
}

data "aws_cloudfront_cache_policy" "noCache" {
  name = "Managed-CachingDisabled"
}

data "aws_cloudfront_cache_policy" "cacheEnable" {
  name = "Managed-CachingOptimized"
}
