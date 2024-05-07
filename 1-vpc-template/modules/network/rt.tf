locals {
    rt_public_name = "public"
    rt_private_name = "private"
}


resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

   route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = local.rt_public_name
  }
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id

    route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.main.id
  }

  tags = {
    Name = local.rt_private_name
  }
}

resource "aws_route_table_association" "public" {
  count = length(var.public_sbnts)
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "private" {
  count = length(var.private_sbnts)
  subnet_id      = aws_subnet.private[count.index].id
  route_table_id = aws_route_table.private.id
}