resource "aws_vpc" "tf_test" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "tf_test" {
  vpc_id = aws_vpc.tf_test.id
  count = length(var.subnet_cidrs)
  cidr_block = var.subnet_cidrs[count.index]
}
