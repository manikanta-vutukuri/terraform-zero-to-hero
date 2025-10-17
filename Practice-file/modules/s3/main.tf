resource "aws_s3_bucket" "test-bucket" {
  bucket = "${var.project}-${var.environment}-bucket749379"

  tags = {
    Name        = "${var.project}-${var.environment}-bucket"
    Environment = var.environment
    Project     = var.project
  }
}

# resource "aws_s3_bucket_acl" "test-bucket-acl" {
#   bucket = aws_s3_bucket.test-bucket.id
#   acl    = "private"
# }