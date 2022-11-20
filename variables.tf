variable "domain" {
  description = "An existing domain, owned by you, in your AWS accout. e.g. mydomain.org"
  type        = string
}

variable "host" {
  description = "the 'host' portion of your new website e.g. www in www.mydomain.org"
  type        = string
  default     = "www"
}
