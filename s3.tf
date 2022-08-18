resource "aws_s3_bucket" "website_bucket" {
  bucket = var.fqdn

  tags = {
    Name = "serverless-website-bucket"
    app  = "serverless-website"
  }
}

resource "aws_s3_object" "index_html" {
  key          = "index.html"
  bucket       = aws_s3_bucket.website_bucket.id
  acl          = "public-read"
  source       = "./html/index.html"
  content_type = "text/html"
}

resource "aws_s3_object" "error_html" {
  key          = "error.html"
  bucket       = aws_s3_bucket.website_bucket.id
  acl          = "public-read"
  source       = "./html/error.html"
  content_type = "text/html"
}

resource "aws_s3_bucket_acl" "website_public_access" {
  bucket = aws_s3_bucket.website_bucket.id
  acl    = "public-read"
}

resource "aws_s3_bucket_website_configuration" "website_bucket_configuration" {
  bucket = aws_s3_bucket.website_bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}