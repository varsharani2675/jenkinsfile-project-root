terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "young-minds-app-terraform-state"
    region         = "us-east-1"
    key            = "batch-32/terraform.tfstate"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}