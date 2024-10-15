provider "aws" {
  region = "us-east-1"  # CloudFront and ACM require us-east-1
}

provider "aws" {
  alias  = "default"
  region = "us-west-2"  # Replace with your preferred region for other services
}
