terraform {

 backend "s3" {
    bucket         = "terraform-state-mgolozar"        
    key            = "state/my-devops-project.tfstate"  
    region         = "eu-west-1"
    dynamodb_table = "terraform-locks"                 
    encrypt        = true
  }


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  region  = "eu-west-1"
  profile = "default"
}
