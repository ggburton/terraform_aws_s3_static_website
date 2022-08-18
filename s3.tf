resource "aws_s3_bucket" "website_bucket" {
  bucket = "serverless-website-bucket-ggb"

  tags = {
    Name = "serverless-website-bucket"
    app  = "serverless-website"
  }
}
