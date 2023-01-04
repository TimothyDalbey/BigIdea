locals {
  react_bucket_name = "${var.prefix}${var.app_name}-react-${terraform.workspace}"
}

data "aws_iam_policy_document" "react_s3_policy" {
  statement {
    actions   = ["s3:Get*", "s3:List*"]
    resources = [
      "arn:aws:s3:::${local.react_bucket_name}",
      "arn:aws:s3:::${local.react_bucket_name}/*"
    ]
    principals {
      type = "AWS"
      identifiers = [
        aws_cloudfront_origin_access_identity.cloudfront.iam_arn
      ]
    }
  }
}

resource "aws_s3_bucket" "react" {
  bucket = local.react_bucket_name
  policy = data.aws_iam_policy_document.react_s3_policy.json
}

resource "aws_s3_bucket_versioning" "react" {
  bucket = aws_s3_bucket.react.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "react" {
  bucket                  = aws_s3_bucket.react.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_acl" "react" {
  bucket = aws_s3_bucket.react.id
  acl    = "private"
}
