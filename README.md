# Terraform ASS Static Website Workshop

> Deploying a Static Website to AWS using Amazon S3, CloudFront, Route53, ACM, and WAF.

Read more about DevOps technology on [DevOps Mojo](https://medium.com/devops-mojo)

[Awesome Cloud](https://medium.com/awesome-cloud) - AWS blogs! A must-read publication for aspiring AWS Architects, Developers & DevOps enthusiasts!



## Overview

- **S3 Bucket:** For storing the static website content.
- **CloudFront:** For content distribution with the S3 bucket as the origin.
- **ACM Certificate:** For enabling HTTPS with CloudFront.
- **Route53:** For mapping a domain name to the CloudFront distribution.
- **WAF:** To attach a Web Application Firewall to CloudFront for security.


## Explanation

- S3 Bucket: Holds your static website content with public read access.
- CloudFront: Provides a secure and fast CDN for your website.
- ACM Certificate: Issues an SSL certificate and validates it via DNS.
- Route53: Connects your domain (managed by Route53) to the CloudFront distribution.
- WAF: Protects the CloudFront distribution from common web-based attacks (SQL injection, XSS, etc.).


## Run

- Configure AWS credentials (aws configure).
- Replace placeholders (your-domain-name) with actual values.

- Run the following commands:

```sh
terraform init
terraform plan
terraform apply
```

