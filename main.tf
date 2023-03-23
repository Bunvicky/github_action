provider "aws" {
  region = "us-west-1"
}

resource "aws_s3_bucket" "bootcamp30-123-vicky" {
  bucket = "bootcamp30-123-vicky"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.bootcamp30-123-vicky.id

  # rule {
  #   apply_server_side_encryption_by_default {
  #     kms_master_key_id = aws_kms_key.mykey.arn
  #     sse_algorithm     = "aws:kms"
    }
  