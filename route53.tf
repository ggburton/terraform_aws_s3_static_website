data "aws_route53_zone" "website_zone" {
  name = var.domain 
}

resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.website_zone.zone_id
  name    = var.fqdn
  type    = "A"

  alias {
    name                   = aws_s3_bucket_website_configuration.website_bucket_configuration.website_domain
    zone_id                = aws_s3_bucket.website_bucket.hosted_zone_id
    evaluate_target_health = true
  }
}
