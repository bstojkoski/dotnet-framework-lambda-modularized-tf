resource "aws_ecr_repository" "dotnet_todo" {
  name = var.name

  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = var.name
    Environment = var.environment
  }
}

resource "aws_ecr_lifecycle_policy" "lifecycle_policy" {
  repository = aws_ecr_repository.dotnet_todo.name

  policy = jsonencode({
    rules = [
      {
        rulePriority = 1
        description  = "Expire images older than 30 days"
        selection    = {
          tagStatus = "any"
          countType = "sinceImagePushed"
          countUnit = "days"
          countNumber = 30
        }
        action       = {
          type = "expire"
        }
      }
    ]
  })
}
