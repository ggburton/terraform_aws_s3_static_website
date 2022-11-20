# AWS S3 static website deployment

This is a template for deploying a static website from a S3 bucket into a cloudfront distrubution with a custom domain name and an SSL certificate.

It creates the following AWS resources:

- An S3 bucket with some placeholder HTML files
- An S3 bucket to store cloudfront logs
- An AWS SSL certificate for your website
- A Cloudfront distribution (North America and Europe edge location only.. see Todo list)
- A route53 domain
- A route53 cname record pointing to your cloudfront endpoint

TODO:
 
- [ ] Create more variables to customise cloudfront options. e.g. option for all edge locations
- [ ] Create a better generic index.html and error.html template
