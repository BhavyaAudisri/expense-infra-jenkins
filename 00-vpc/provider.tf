terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
      #version = "~> 5.84"
    }
  }

 backend "s3" {
    bucket  = "somi-jenkins-infra"
    key     = "jenkins-vpc"
    region  = "us-east-1"
    encrypt = true
    use_locking {
      table = "somi-jenkins-infra"
    }
  }
}
