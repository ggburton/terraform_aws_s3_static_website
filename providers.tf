terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure aws provider
provider "aws" {
  region = "us-east-1"
}
