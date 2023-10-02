terraform{
backend "s3" {
  bucket = "backend.s3"
  key = "terraform.tfstate"
  region = "us-east-1"
  dynamodb_table = "dynamodb-1"

shared_credentials_file = ["/.aws/credentials"]
  profile                  = "default"

}


}
