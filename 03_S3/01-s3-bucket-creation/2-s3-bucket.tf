# Resource Block: Create Random Pet Name 
resource "random_pet" "petname" {
  length    = 3
  separator = "-"
}

# Resource Block: Create AWS S3 Bucket
resource "aws_s3_bucket" "sample" {
  bucket = random_pet.petname.id
}

# Resource Block: Create AWS S3 Bucket ACL
resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.sample.id
  acl    = "public-read"
}