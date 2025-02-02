variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of the instance"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID for the EC2 instance"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "The security group IDs for the EC2 instance"
  type        = list(string)
}

variable "key_name" {
  description = "The name of the SSH key"
  type        = string
}

variable "iam_instance_profile" {
  description = "The IAM instance profile to associate with the instance"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone in which to launch the EC2 instance"
  type        = string
}

variable "common_tags" {
  description = "Common tags for the instance"
  type        = map(string)
}

variable "instance_name" {
  description = "Name of the instance"
  type        = string
}

variable "ssh_user" {
  description = "The SSH user for the instance"
  type        = string
}

variable "key_path" {
  description = "The path to the SSH private key"
  type        = string
}

variable "setup_script" {
  description = "Path to the setup script"
  type        = string
}

variable "depends_on" {
  description = "The resources that this instance depends on"
  type        = list(any)
  default     = []
}
