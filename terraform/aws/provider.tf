terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.21"
    }
  }
  backend "s3" {
    bucket         = "baldedokinha"
    key            = "terraform.tfstate"
    dynamodb_table = "tabeladokinha"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "cloud"
}