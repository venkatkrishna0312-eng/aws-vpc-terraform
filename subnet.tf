resource "aws_subnet" "public_subnet" {


  vpc_id            = aws_vpc.main.id
  cidr_block        = var.pub_subnet_cidr
  availability_zone = var.availability_zone

  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc_name}-public-subnet"
  }

}

resource "aws_subnet" "private_subnet" {


  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr
  availability_zone = var.availability_zone

  map_public_ip_on_launch = false

  tags = {
    Name = "${var.vpc_name}-private-subnet"
  }

}

