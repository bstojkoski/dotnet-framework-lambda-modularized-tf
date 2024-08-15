resource "aws_lambda_function" "todo_api" {
  function_name = var.function_name

  s3_bucket        = var.s3_bucket
  s3_key           = var.s3_key
  handler          = var.handler
  runtime          = var.runtime
  role             = var.lambda_role_arn

  memory_size = var.memory_size
  timeout     = var.timeout

  tags = {
    Name = var.function_name
  }
}

resource "aws_lambda_permission" "allow_api_gateway" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.todo_api.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = var.source_arn
}
