# If this certificate already exists
# import it via the cli using the command 
# terraform import aws_acm_certificate.cert <aws_certifcate_arn>

resource "aws_acm_certificate" "cert" {
  domain_name       = local.fqdn
  validation_method = "DNS"
}
