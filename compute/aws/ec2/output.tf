output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.ec2_instance.public_ip
}

output "instance_id" {
  description = "The instance ID"
  value       = aws_instance.ec2_instance.id
}
