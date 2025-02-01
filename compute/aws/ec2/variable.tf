variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "SSH Key Pair name"
  type        = string
}

variable "instance_name" {
  description = "Tag for the EC2 instance"
  type        = string
}

variable "user_data" {
  description = "User data script"
  type        = string
}

variable "my_ip" {
  description = "Your IP address for SSH access"
  type        = string
}
