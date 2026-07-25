resource "aws_route_table" "public_rt" {


    vpc_id = aws_vpc.main.id
    tags = {
        Name = "${var.vpc_name}-public-rt"
    }
}

resource "aws_route" "internet_access" {
    route_table_id         = aws_route_table.public_rt.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main_igw.id

}

resource "aws_route_table_association" "public_rt_assoc" {
    subnet_id      = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.public_rt.id

  
}

resource "aws_route_table" "private_rt" {
    vpc_id = aws_vpc.main.id
    tags = {
        Name = "${var.vpc_name}-private-rt"
    }
}

resource "aws_route" "private_intenet_access" {

    route_table_id         = aws_route_table.private_rt.id
    destination_cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.main_nat_gateway.id

}

resource "aws_route_table_association" "private_rt_assoc" {
    subnet_id      = aws_subnet.private_subnet.id
    route_table_id = aws_route_table.private_rt.id
  
}

