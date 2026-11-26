# VPC Outputs

output "vpc_id" {
  description = "ID of the project VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr" {
  description = "CIDR block of the project VPC"
  value       = aws_vpc.main.cidr_block
}

# Subnet Outputs

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value = [
    aws_subnet.public_a.id,
    aws_subnet.public_b.id
  ]
}

output "app_subnet_ids" {
  description = "IDs of the private application subnets"
  value = [
    aws_subnet.app_a.id,
    aws_subnet.app_b.id
  ]
}

output "db_subnet_ids" {
  description = "IDs of the private database subnets"
  value = [
    aws_subnet.db_a.id,
    aws_subnet.db_b.id
  ]
}

# ==========================================
# Internet Gateway Output
# ==========================================

output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.main.id
}

# ==========================================
# Security Group Outputs
# ==========================================

output "alb_security_group_id" {
  description = "ID of the ALB security group"
  value       = aws_security_group.alb.id
}

output "app_security_group_id" {
  description = "ID of the application security group"
  value       = aws_security_group.app.id
}

output "db_security_group_id" {
  description = "ID of the database security group"
  value       = aws_security_group.db.id
}

output "rds_endpoint" {
  description = "Private RDS database endpoint"
  value       = aws_db_instance.main.endpoint
}

output "rds_port" {
  description = "RDS database port"
  value       = aws_db_instance.main.port
}

output "rds_address" {
  description = "RDS database hostname"
  value       = aws_db_instance.main.address
}
