resource "aws_route53_record" "primary-a" {
  zone_id = var.route53_hosted_zone_id[terraform.workspace]
  name    = var.route53_hosted_zone_base_name[terraform.workspace]
  type    = "A"
  alias {
    name                   = aws_cloudfront_distribution.react.domain_name
    zone_id                = aws_cloudfront_distribution.react.hosted_zone_id
    evaluate_target_health = true
  }
}
