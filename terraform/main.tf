
resource "aws_s3_bucket" "my_bucket" {
  #bucket =  "test-${random_id.bucket_id.hex}"
  bucket =  "test-amit-2026"
 }

resource "random_id" "bucket_id"{
byte_length=4
   
}
terraform {
  backend "s3" {
    bucket         = "amit-tf-state-bucket-2026"
    key            = "terraform/state.tfstate"
    region         = "us-east-1"
    dynamodb_table  = "terraform-locks"
  }
}
