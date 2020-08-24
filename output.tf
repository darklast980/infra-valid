output "doc-db-endpoint" {
    value = module.database.endpoint
}

output "app_ecr_id" {
    value = module.ecr.id
}

output "app_repository" {
    value = module.ecr.repository
}