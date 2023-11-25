module "ec2" {
  source = "../modules/ec2"
  instance_type = "t2.micro"
  subnet_id = "10.1.10.0/24"
}
