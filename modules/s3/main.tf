resource "aws_s3_bucket" "backend-bucket" {
  bucket = "backend-bucket-kanghyekoung"

  tags = {
    Name = "terraform test"
  }
}

# remote state 버전 관리yes
resource "aws_s3_bucket_versioning" "backend-bucket-versioning" {
  bucket = aws_s3_bucket.backend-bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}