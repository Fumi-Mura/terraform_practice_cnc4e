data aws_ssm_parameter amzn2_ami {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

resource "aws_instance" "tf_test" {
  ami = data.aws_ssm_parameter.amzn2_ami.value
  instance_type = var.instance_type
  subnet_id = var.subnet_id
}
