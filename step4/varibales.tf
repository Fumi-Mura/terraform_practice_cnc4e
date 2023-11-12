variable "vpc_cidr" {
  type = string
  description = "vpc cidr"
}

variable "dev" {
  type = bool
  description = "invironments"
}

variable "subnet_cidrs" {
  type = list(string)
  description = "subnet"
}
