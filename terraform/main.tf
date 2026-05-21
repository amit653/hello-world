
resource "aws_s3_bucket" "my_bucket" {
  bucket =  "test-${random_id.bucket_id.hex}"
 }

resource "random_id" "bucket_id"{
byte_length=4
   
}