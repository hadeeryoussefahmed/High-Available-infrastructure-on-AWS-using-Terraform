variable "VPC_CIDR" {
  type    = string
  default = "10.0.0.0/16"
}

variable "VPC_NAME" {
  type = string
}

variable "IGW_NAME" {
  type = string
}

variable "subnet_public" {
  type = list(any)
}
variable "subnet_private" {
  type = list(any)
}

variable "availability_zones" {
  type = list(any)
}


variable "REGION" {
  type = string
}

variable "AMI_ID" {
  type = string
}
variable "INSTANCE_TYPE" {
  type = string
}


