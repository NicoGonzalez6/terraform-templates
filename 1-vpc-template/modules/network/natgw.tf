locals {
    natgw_name = "nat_gw_main"
}


resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.natip.id
  subnet_id     = aws_subnet.public[0].id

  tags = {
    Name = local.natgw_name
  }

  depends_on = [aws_internet_gateway.main]
}