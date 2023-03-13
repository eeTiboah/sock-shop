

terraform {
  backend "s3" {
    bucket = "altschoolfinalexamterraformbucket"
    region = "us-east-1"
    key    = "global/s3/terraform.tfstate"
  }
}