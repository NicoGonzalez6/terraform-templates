locals{
    vpc_name = "main"
}


resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

  tags = {
    Name = local.vpc_name
  }

}

resource "aws_subnet" "public" {
  count = length(var.public_sbnts)
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.public_sbnts,count.index)

  tags = {
    Name = "public-${count.index + 1}"
  }
}

resource "aws_subnet" "private" {
  count = length(var.private_sbnts)
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.private_sbnts,count.index)

  tags = {
    Name = "private-${count.index + 1}"
  }
}