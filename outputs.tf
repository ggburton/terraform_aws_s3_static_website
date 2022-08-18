output "website_url" {
  value = "http://${aws_route53_record.www.fqdn}"
}
