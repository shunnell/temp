terraform {
  backend "s3" {
    bucket         = "dos-platform-sei-tf-state-us-east-1"
    key            = "terraform/state/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
