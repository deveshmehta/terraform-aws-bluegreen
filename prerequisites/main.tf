##################################################################################
# PROVIDERS
##################################################################################

provider "aws" {
  profile                 = var.aws_resource_profile
  shared_credentials_file = var.shared_credentials_file
  region                  = var.aws_region
}

##################################################################################
# RESOURCES
##################################################################################
resource "aws_dynamodb_table" "tf_statelock_dynamodb_table" {
  name           = var.aws_dynamodb_table
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_s3_bucket" "tf_devops_s3_bucket" {
  bucket        = var.aws_devops_bucket
  acl           = "private"
  force_destroy = true

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = data.aws_kms_key.kms_key_alias_id.id
        sse_algorithm     = "aws:kms"
      }
    }
  }

  policy = <<EOF
{
    "Version": "2008-10-17",
    "Statement": [
        {
            "Sid": "ReadforAppTeam",
            "Effect": "Allow",
            "Principal": {
                "AWS": "${var.aws_usr_arn}"
            },
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::${var.aws_devops_bucket}/*"
        },
        {
            "Sid": "",
            "Effect": "Allow",
            "Principal": {
                "AWS": "${var.aws_usr_arn}"
            },
            "Action": "s3:*",
            "Resource": [
                "arn:aws:s3:::${var.aws_devops_bucket}",
                "arn:aws:s3:::${var.aws_devops_bucket}/*"
            ]
        }
    ]
}
EOF
}

data "aws_caller_identity" "current" {}

data "aws_kms_key" "kms_key_alias_id" {
  key_id = "arn:aws:kms:${var.aws_region}:${data.aws_caller_identity.current.account_id}:alias/${var.kms_key_alias}"
}