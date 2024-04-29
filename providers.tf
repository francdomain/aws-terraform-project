# Install the specified terraform version
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>5.47.0"
    }
  }
}

# Configure aws provider
provider "aws" {
  region    = "us-east-1"
  profile   = "terraform-user"
}

# Stores the terraform state file in s3 bucket
terraform {
  backend "s3" {
    bucket   = "franc-terraform-remote-state"
    key      = "terraform.tf.dev"
    region   = "us-east-1"
    profile  = "terraform-user"
  }
}






