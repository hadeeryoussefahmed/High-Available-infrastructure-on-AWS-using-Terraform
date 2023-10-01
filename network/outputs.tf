output "vpc_id" {
  value = aws_vpc.myvpc.id
}

output "vpc_cidr" {
  value = aws_vpc.myvpc.cidr_block
}

output "subnet_public" {
  value = aws_subnet.public-subnet
}
output "subnet_private" {
  value = aws_subnet.private-subnet
}




