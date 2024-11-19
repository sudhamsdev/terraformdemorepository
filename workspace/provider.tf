# Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws" # registry.terraform.io/hashicorp/aws
      version = "5.74.0"
    }
  }
  # S3 bucket for storing state file in remote backend
  backend "s3" {
    bucket         = "terraform-statefiles-sudheer"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-prod-statefile"
  }
}

# Provider Block
provider "aws" {
  # Configuration options
  region = "us-east-1"
}