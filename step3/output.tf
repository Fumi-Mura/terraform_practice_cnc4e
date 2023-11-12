output "security_group" {
  value = aws_security_group.tf_test.id
}
output "subnet" {
  # value = aws_subnet.tf_test
  value = [ for value in aws_subnet.tf_test : value.id ]
}
