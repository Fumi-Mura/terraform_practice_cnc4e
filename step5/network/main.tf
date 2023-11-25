module "vpc1" {
  source = "../modules/vpc"
  vpc_cidr = "10.1.0.0/16"
  subnet_cidrs = ["10.1.10.0/24","10.1.20.0/24"]
}

module "vpc2" {
  source = "../modules/vpc"
  vpc_cidr = "10.2.0.0/16"
  subnet_cidrs = ["10.1.10.0/24","10.1.20.0/24"]
}
