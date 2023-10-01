resource "aws_route_table" "public_routetable" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "my-routetable"
  }
}

resource "aws_route_table_association" "public-subnet-associate-useast1b" {
        count = 2
        subnet_id = aws_subnet.public-subnet[count.index].id 
        route_table_id = aws_route_table.public_routetable.id
  
}




