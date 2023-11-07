resource "aws_vpc" "tf_test" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "tf_test" {
  vpc_id = aws_vpc.tf_test.id
  # count
  # count      = length(var.subnet_cidrs)
  # cidr_block = var.subnet_cidrs[count.index]

  # for_each
  for_each   = toset(var.subnet_cidrs)
  cidr_block = each.key
}

# output "for_each" {
#   value = [for s in var.subnet_cidrs : s]
# }

resource "aws_security_group" "tf_test" {
  description = "tf test security group"
  vpc_id      = aws_vpc.tf_test.id

  # ingress {
  #   from_port   = 443
  #   to_port     = 443
  #   protocol    = "tcp"
  #   cidr_blocks = ["10.1.10.10/32"]
  # }
  # ingress {
  #   from_port   = 443
  #   to_port     = 443
  #   protocol    = "tcp"
  #   cidr_blocks = ["10.1.10.11/32"]
  # }

  # dynamic
  # dynamic "ingress" {
  #   for_each = toset(var.sg_allow_cidrs)

  #   content {
  #     cidr_blocks = [ingress.key]
  #     from_port   = 443
  #     to_port     = 443
  #     protocol    = "tcp"
  #   }
  # }
  dynamic "ingress" {
    for_each = var.sg_ingress_rules
    content {
      cidr_blocks = [ingress.key]
      protocol    = ingress.value.protocol
      from_port   = 443
      to_port     = 443
    }
  }
}
