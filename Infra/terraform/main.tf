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
  region                      = "sa-east-1"
  access_key                  = "fake"
  secret_key                  = "fake"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    dynamodb = var.endpoint_localstack
  }

  default_tags {
    tags = {
      owner      = "anderson"
      managed-by = "terraform"
    }
  }

}