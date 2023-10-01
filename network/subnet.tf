#create puplic subnet
resource "aws_subnet" "public-subnet" { 
  count = 2
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnet_public[count.index]
  availability_zone = var.availability_zones[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet"
  }
}


#create private subnet


resource "aws_subnet" "private-subnet" {
  count = 2
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnet_private[count.index]
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "private-subnet"
  }
}


