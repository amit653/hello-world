variable "aws_region" {
  description = "aws region to deploy tf"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "aws bucket"
  type        = string
  default     = "amit-bucket"
}