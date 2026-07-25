
resource "aws_eip" "nat_eip" {

    domain = "vpc"
    tags = {
        Name = "${var.vpc_name}-nat-eip"
    }
  
}

resource "aws_nat_gateway" "main_nat_gateway" {

    allocation_id = aws_eip.nat_eip.id
    subnet_id     = aws_subnet.private_subnet.id

     depends_on = [
        aws_internet_gateway.main_igw
  ]


    tags = {
        Name = "${var.vpc_name}-nat-gateway"
    }
  
}

