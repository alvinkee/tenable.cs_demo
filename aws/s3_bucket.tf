resource "aws_s3_bucket" "tcs-demo-s3" {
  bucket = "tcs-demo-s3-bucket"
}

resource "aws_s3_bucket_acl" "tcs-demo-s3-acl" {
  bucket = aws_s3_bucket.tcs-demo-s3.id
  acl    = "public-read"
}
