app_name  = "bigidea-fe"
app_group = "big-idea"
prefix    = "tmd-"

route53_hosted_zone_id = {
  "dev"  = "Z045047548TLH343VAZF"
  "prod" = "Z045047548TLH343VAZF"
}

route53_hosted_zone_base_name = {
  "dev"  = "dev.bigideacorporation.com"
  "prod" = "bigideacorporation.com"
}

cloudfront_domain_cert_arn = {
  "dev"  = "arn:aws:acm:us-east-1:223651443348:certificate/38cbad68-1a74-4b8a-97aa-31ee3b8f23d5"
  "prod" = "arn:aws:acm:us-east-1:223651443348:certificate/38cbad68-1a74-4b8a-97aa-31ee3b8f23d5"
}
