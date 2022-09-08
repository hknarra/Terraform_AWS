# Simple S3 bucket creation with ACL

#### S3 Bucket ACL resource public-read:
```
# Resource Block: Create AWS S3 Bucket ACL
resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.sample.id
  acl    = "public-read"
}
```

#### S3 Bucket ACL resource private:
```
# Resource Block: Create AWS S3 Bucket ACL
resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.sample.id
  acl    = "private"
}
```