terraform {
  required_providers {
    aws = {
      version = ">=4.49.0"
    }
  }
}

provider "aws" {
  profile = "fm"
  region = "ap-northeast-1"

  default_tags {
    tags = {
      Env   = "terraform-practice"
      Owner = "fumi"
      name  = "tf test step3"
    }
  }
}
