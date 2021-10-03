terraform {
  backend "s3" {
    bucket = "kunamvenkat1.xyz"
    key    = "myterraform.tfstate"
    region = "us-east-1"
     }
  }