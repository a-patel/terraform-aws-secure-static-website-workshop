resource "aws_wafv2_web_acl" "web_acl" {
  name        = "website-waf"
  scope       = "CLOUDFRONT" # Must be CLOUDFRONT for CloudFront
  description = "WAF for the static website"
  
  default_action {
    allow {}
  }

  rule {
    name     = "BlockCommonAttacks"
    priority = 1

    action {
      block {}
    }

    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesCommonRuleSet"
        vendor_name = "AWS"
      }
    }

    visibility_config {
      sampled_requests_enabled = true
      cloudwatch_metrics_enabled = true
      metric_name = "BlockCommonAttacks"
    }
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "website-waf"
    sampled_requests_enabled   = true
  }
}

resource "aws_wafv2_web_acl_association" "waf_assoc" {
  resource_arn = aws_cloudfront_distribution.cdn.arn
  web_acl_arn  = aws_wafv2_web_acl.web_acl.arn
}
