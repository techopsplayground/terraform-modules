resource "aws_iam_role" "bastion_role" {
  name               = "${var.prefix}-bastion_server"
  assume_role_policy = jsonencode({
    Statement = [
      {
        Action    = "sts:AssumeRole"
        Effect    = "Allow"
        Sid       = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_instance_profile" "bastion_profile" {
  name = "${var.prefix}-bastion-profile"
  role = aws_iam_role.bastion_role.name
}

resource "aws_iam_policy" "s3_access_policy" {
  name        = "EC2S3AccessPolicy"
  description = "Policy to allow EC2 instance to access S3 bucket"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject",
        "s3:ListBucket",
        "s3:PutObject"
      ],
      "Resource": [
        "arn:aws:s3:::${var.s3_bucket_arn}/*",
        "arn:aws:s3:::${var.s3_bucket_arn}"
      ]
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "bastion_role_policy_attachment" {
  role       = aws_iam_role.bastion_role.name
  policy_arn = aws_iam_policy.s3_access_policy.arn
}
