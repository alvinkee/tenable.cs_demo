
resource "aws_s3_bucket_server_side_encryption_configuration" "tenable_cs_demo_s3_bucketSseConfig" {
  bucket = aws_s3_bucket.tenable_cs_demo_s3_bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = "<master_kms_key_id>"
    }
  }
}