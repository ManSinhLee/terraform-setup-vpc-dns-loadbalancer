variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "route53_hosted_zone_name" {
  type    = string
  default = "YOUR_DOMAIN_NAME." #remember "."
}

variable "domain_name" {
  type    = string
  default = "YOUR_DOMAIN_NAME"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "my_address" {
  type    = string
  default = "{YOUR_IP_ADDRESS}/32"
}

variable "office_address" {
  type    = string
  default = "{YOUR_OFFICE_ADDRESS}}32"
}
