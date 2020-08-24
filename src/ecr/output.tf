output "id" {
    value = aws_ecr_repository.app.registry_id
}

output "repository" {
    value = aws_ecr_repository.app.repository_url
}

output "name" {
  value = aws_ecr_repository.app.name
}

output "image_name" {
    value = ""
}
