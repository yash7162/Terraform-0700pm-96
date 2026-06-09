resource "aws_instance" "name" {
    ami="ami-068c0051b15cdb816"
    instance_type = "t2.micro"
    tags = {
      Name = "qa"
    }
   
  
}

resource "aws_s3_bucket" "dev" {
    bucket = "sdfghjkertysxtcvbx"

  
}
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.dev.id
  versioning_configuration {
    status = "Enabled"
  }
}