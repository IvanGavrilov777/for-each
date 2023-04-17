terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.63.0"
    }
  }
}

variable "map-aws-regions" {
  type = map(any)
  default = {
    "east1" = {
      "region1" = "us-east-1",
    },
    "west1" = {
      "region2" = "us-west-1",
    },
    "west2" = {
      "region3" = "us-west-2",
    },
  }
}

resource "aws_instance" "VMka" {
  for_each = var.map-aws-regions
  instance_type = "t2.micro"
  provider = "${each.value}"
  
  tags = {
    name = "${each.key}"
}
}
