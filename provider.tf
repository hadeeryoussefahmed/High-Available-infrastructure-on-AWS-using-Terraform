provider "aws" {
  region  = var.REGION
shared_credentials_files = ["/.aws/credentials"]
  profile                  = "default"

}
