# Create S3 Bucket in each environment using meta arg for_each and maps
resource "aws_s3_bucket" "my-s3-bucket" {

  # for_each Meta-Argument
  for_each = {
    dev  = "hk-abc-bucket"
    qa   = "hk-abc-bucket"
    stag = "hk-abc-bucket"
    prod = "hk-abc-bucket"
  }
  bucket = "${each.key}-${each.value}"
  acl    = "private"

  tags = {
    Environment = each.key
    bucketname  = "${each.key}-${each.value}"
    eachvalue   = each.value
  }
}

# # implement this
# # Resource Block: Create AWS S3 Bucket ACL
# resource "aws_s3_bucket_acl" "my_bucket_acl" {

#   # bucket = aws_s3_bucket.my-s3-bucket.id
#   bucket = aws_s3_bucket.my-s3-bucket.id
#   acl    = "private"
# }