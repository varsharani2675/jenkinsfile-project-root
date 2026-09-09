terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

 
  backend "s3" {
    bucket = "s3-app-terraform-state"
    region = "us-east-1"
    key = "jenkins-project/terraform.tfstate"
    encrypt = true
    dynamodb_table = "terraform-locks"
  }
}
