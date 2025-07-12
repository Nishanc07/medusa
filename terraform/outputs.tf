output "vpc_id" {
  value = aws_vpc.medusa_vpc.id
}

output "public_subnet_ids" {
  value = [
    aws_subnet.public_subnet_1.id,
    aws_subnet.public_subnet_2.id
  ]
}

output "security_group_id" {
  value = aws_security_group.ecs_sg.id
}

output "ecr_repository_url" {
  value = aws_ecr_repository.medusa_repo.repository_url
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.medusa.name
}

output "ecs_service_name" {
  value = aws_ecs_service.medusa_service.name
}
