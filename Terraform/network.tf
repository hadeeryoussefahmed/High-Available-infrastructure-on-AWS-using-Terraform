module "network" {
  source="../network"
  VPC_CIDR=var.VPC_CIDR
  VPC_NAME = var.VPC_NAME
  IGW_NAME = var.IGW_NAME
  subnet_public= var.subnet_public
  subnet_private= var.subnet_private
  availability_zones = var.availability_zones

}




