# Create a cname record to point out domain name 
# to the cloudfront distribution domain

resource "aws_route53_zone" "selected" {
  name = "${var.domain}."
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.selected.zone_id
  name    = "www"
  type    = "CNAME"
  ttl     = 300
  records = [aws_cloudfront_distribution.s3_distribution.domain_name]
}
