module "vpc" {
  source = "./modules/vpc"

  cidr_block                = "10.0.0.0/16"
  public_subnet_cidr        = "10.0.1.0/24"
  private_subnet_cidr       = "10.0.2.0/24"
  availability_zone         = "eu-west-1a"
  vpc_name                  = "main-vpc"
  public_subnet_name        = "public-subnet"
  private_subnet_name       = "private-subnet"
  internet_gateway_name     = "main-igw"
  public_route_table_name   = "public-route-table"
  private_route_table_name  = "private-route-table"
}

module "ecr" {
  source = "./modules/ecr"

  name         = "dotnet-todo"
  environment  = "dev"
  force_delete = true
}

module "lambda" {
  source = "./modules/lambda"

  function_name    = "TodoApi"
  s3_bucket        = "terraform-dotnet-todo-tfstate"
  s3_key           = "src/lambda.zip"
  handler          = "TodoApi"
  runtime          = "dotnet6"
  lambda_role_arn  = var.lambda_role_arn
  memory_size      = 512
  timeout          = 15
  source_arn       = "arn:aws:execute-api:eu-west-1:024848463067:${module.api_gateway.api_id}/*/*/*"
}

module "api_gateway" {
  source              = "./modules/api_gateway"
  api_name            = "dev_API_Gateway"
  api_description     = "API Gateway for Lambda function"
  region              = "eu-west-1"
  lambda_function_arn = module.lambda.lambda_function_arn
  timeout_milliseconds = 29000
  stage_name          = "dev"
}
