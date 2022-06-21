resource "aws_s3_bucket" "s3_website" {
  bucket        = var.domain_name
  acl           = "public-read"
  force_destroy = true
}

resource "aws_s3_bucket" "static-website" {
  bucket = var.domain_name
  acl    = "public-read"
  policy = <<EOF
{
  "Id": "allow-public-access",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "allow-public-access",
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::${var.domain_name}/*",
      "Principal": "*"
    }
  ]
}
EOF

  website {
    index_document = "index.html"
  }
}