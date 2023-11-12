resource "aws_vpc" "tf_test" {
  cidr_block = var.vpc_cidr
  enable_dns_support = var.dev ? true : false
  enable_dns_hostnames = var.dev ? true : false
}

resource "aws_subnet" "tf_test" {
  count = var.dev ? length(var.subnet_cidrs) : 0
  cidr_block = var.subnet_cidrs[count.index]
  vpc_id = aws_vpc.tf_test.id
}
