resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.cmcloudlab_vpc.id
  cidr_block              = "10.0.${count.index}.0/24"
  map_public_ip_on_launch = true
  count                   = length(data.aws_availability_zones.available.names)
  availability_zone       = element(data.aws_availability_zones.available.names, count.index)
  tags = {
    Name = "public-subnet-${element(data.aws_availability_zones.available.names, count.index)}"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.cmcloudlab_vpc.id
  cidr_block              = "10.0.${length(data.aws_availability_zones.available.names) + count.index}.0/24"
  map_public_ip_on_launch = false
  count                   = length(data.aws_availability_zones.available.names)
  availability_zone       = element(data.aws_availability_zones.available.names, count.index)
  tags = {
    Name = "private-subnet-${element(data.aws_availability_zones.available.names, count.index)}"
  }
}

resource "aws_subnet" "database_subnet" {
  vpc_id                  = aws_vpc.cmcloudlab_vpc.id
  cidr_block              = "10.0.${2 * length(data.aws_availability_zones.available.names) + count.index}.0/24"
  map_public_ip_on_launch = false
  count                   = length(data.aws_availability_zones.available.names)
  availability_zone       = element(data.aws_availability_zones.available.names, count.index)
  tags = {
    Name = "database-subnet-${element(data.aws_availability_zones.available.names, count.index)}"
  }
}