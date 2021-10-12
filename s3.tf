### Create Bucket

resource "aws_s3_bucket" "b" {
  bucket = "Rapha-Ribeiro-bucket"
  acl    = "private"

  tags = {
    Name        = "Rapha-Ribeiro-bucket"
    
  }
}