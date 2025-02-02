output "iam_role_name" {
  description = "IAM Role name for the Bastion server"
  value       = aws_iam_role.bastion_role.name
}

output "iam_instance_profile_name" {
  description = "IAM Instance Profile name for the Bastion server"
  value       = aws_iam_instance_profile.bastion_profile.name
}

output "s3_access_policy_arn" {
  description = "ARN of the S3 access policy"
  value       = aws_iam_policy.s3_access_policy.arn
}
