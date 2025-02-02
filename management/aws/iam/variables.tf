variable "prefix" {
  description = "Prefix for IAM resources"
  type        = string
}

variable "s3_bucket_arn" {
  description = "ARN of the S3 bucket for policy access"
  type        = string
}
