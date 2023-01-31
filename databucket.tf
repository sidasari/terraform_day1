resource "aws_s3_bucket" "bucket090" {
    bucket = "bucket09000"
    tags = {
        Name = "bucket1"
    }
}
resource "aws_s3_bucket" "bucket091" {
    bucket = "bucket09001"
    tags = {
        Name = "bucket2"
    }
    depends_on = [aws_s3_bucket.bucket090]
}
resource "aws_s3_bucket" "bucket092" {
    bucket = "bucket09002"
    tags = {
        Name = "bucket3"
    }
}