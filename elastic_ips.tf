resource "aws_eip" "cmcloudlab_nat_eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.cmcloudlab_igw]
}