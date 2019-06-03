provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_vpc" "main" {
  cidr_block = "${local.workspace["vpc_cidr"]}"

  tags = {
    Name = "${local.name}"
  }
}
