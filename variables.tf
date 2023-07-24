variable "region" {
  description = "AWS region"
  default = "us-west-1"
}

locals {
  VMsizes = toset([
    "t2.nano",
    "t2.micro",
    "t2.large",
  ])
}
