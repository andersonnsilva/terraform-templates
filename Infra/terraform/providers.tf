terraform {
  required_version = ">= 1.1.0"

  required_providers {
    aws = {
      version = "3.73.0"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region                      = var.aws_region
  access_key                  = "fake"
  secret_key                  = "fake"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    dynamodb = var.endpoint_localstack
    sns      = var.endpoint_localstack
    sqs      = var.endpoint_localstack
  }

  default_tags {
    tags = {
      owner = var.owner
    }
  }

}