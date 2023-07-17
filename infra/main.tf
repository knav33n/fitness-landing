terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "2.3.0"
    }
  }

  backend "s3" {
    bucket = "gym-landing-terraform-state"
    key    = "gym-landing-terraform-state-key"
    region = "ap-south-1"
  }
}

provider "aws" {
  alias  = "ap-south-1"
  region = "ap-south-1"
}