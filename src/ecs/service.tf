resource "aws_ecs_service" "default" {
  name = "${var.name}-ecs-service"

  task_definition = aws_ecs_task_definition.default.arn

  cluster = aws_ecs_cluster.default.id

  launch_type = var.launch_type

  tags = {
    "Description" = "ECS Service ${var.name}"
    "Terraform"   = "true"
  }
}