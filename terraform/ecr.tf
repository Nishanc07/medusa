resource "aws_ecr_repository" "medusa_repo" {
  name                 = "medusa-app"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "medusa-ecr"
  }
}
