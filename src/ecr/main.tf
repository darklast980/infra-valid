resource "aws_ecr_repository" "app" {
  name                 = "bar"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

tags = {
  "Name" = var.image_name 
  "Description" = "ECR ${var.image_name}" 
  "Terraform" = "true"
}
}

