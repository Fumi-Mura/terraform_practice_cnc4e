variable "vpc_cidr" {
  type        = string
  description = "cidr of vpc"
}

variable "subnet_cidrs" {
  type        = list(string)
  description = "cidr of subnet"
}

variable "sg_allow_cidrs" {
  type        = list(string)
  description = "cidr of security group"
}

variable "sg_ingress_rules" {
  type = map(object({
    protocol = string
  }))
}
