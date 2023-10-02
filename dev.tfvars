VPC_CIDR              = "10.0.0.0/16"
VPC_NAME              = "myvpc"
IGW_NAME              = "gw"
subnet_public = [ "10.0.1.0/24" ,"10.0.2.0/24"]
subnet_private = [ "10.0.3.0/24","10.0.4.0/24" ]
availability_zones=["us-east-1a","us-east-1b"]
REGION                = "us-east-1"
AMI_ID                = "ami-03a6eaae9938c858c"
INSTANCE_TYPE         = "t2.micro"