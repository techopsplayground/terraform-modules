variable "prefix" {
  description = "Prefix for resource names"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the security group will be created"
  type        = string
}

variable "common_tags" {
  description = "Common tags to apply to the security group"
  type        = map(string)
}
