
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }
  cloud { 
    
    organization = "tfc-devops-khg" 

    workspaces { 
      name = "tfc-devops-khg" 
    } 
  } 
  
  # backend "s3" {
  #   bucket         = "backend-bucket-kanghyekoung"
  #   key            = "terraform/state-test/terraform.tfstate"
  #   region         = "ap-northeast-2"
  #   dynamodb_table = "terraform-lock"
  # }
}

provider "aws" {
  region = "ap-northeast-2"
}