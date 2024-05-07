locals {
    igw_name = "igw_main"
}


resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

    tags = {
        Name = local.igw_name
    }
}