resource "aws_key_pair" "key_pair" {
  key_name   = "man-sinh-le"
  public_key = file("~/.ssh/id_rsa.pub")
}