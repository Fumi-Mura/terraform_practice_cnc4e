output "vpc_id" {
  value       = aws_vpc.tf_test.id
  description = "vpc id"
}

output "vpc_arn" {
  value       = aws_vpc.tf_test.arn
  description = "vpc arn"
}

output "subnet" {
  value       = aws_subnet.tf_test
  description = "subnet info"
}
