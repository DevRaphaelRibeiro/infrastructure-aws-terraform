### Create Bucket

resource "aws_s3_bucket" "b" {
  bucket = "rapha-ribeiro-bucket"
  acl    = "private"

  tags = {
    Name        = "rapha-ribeiro-bucket"
    
  }
}