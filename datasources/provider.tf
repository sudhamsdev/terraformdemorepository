# Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws" # registry.terraform.io/hashicorp/aws
      version = "5.74.0"
    }
  }
}

# Provider Block
provider "aws" {
  # Configuration options
  region = "us-east-1"
}