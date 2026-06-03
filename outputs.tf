output "vpc_id" {
  value       = aws_vpc.main.id
  description = "Ідентифікатор створеної VPC"
}

output "subnet_ids" {
  # Виведемо ID всіх трьох підмереж списком
  value       = [aws_subnet.subnet1.id, aws_subnet.subnet2.id, aws_subnet.subnet3.id]
  description = "Список ІД створених публічних підмереж"
}