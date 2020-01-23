resource "aws_iam_role_policy" "fas" {
  name = "${var.prefix}-f5-fas-policy"
  role = aws_iam_role.fas.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:DescribeInstances",
        "ec2:DescribeTags",
        "autoscaling:DescribeAutoScalingGroups"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF

}

resource "aws_iam_role" "fas" {
  name = "${var.prefix}-f5-fas-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

}

resource "aws_iam_instance_profile" "fas" {
  name = "${var.prefix}-fas_sd"
  role = aws_iam_role.fas.name
}

