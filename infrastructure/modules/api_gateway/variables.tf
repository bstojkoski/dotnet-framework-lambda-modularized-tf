variable "api_name" {
  description = "The name of the API Gateway"
  type        = string
  default     = "dev_API_Gateway"
}

variable "api_description" {
  description = "The description of the API Gateway"
  type        = string
  default     = "API Gateway for Lambda function"
}

variable "region" {
  description = "The AWS region"
  type        = string
}

variable "lambda_function_arn" {
  description = "The ARN of the Lambda function to integrate with API Gateway"
  type        = string
}

variable "timeout_milliseconds" {
  description = "The timeout in milliseconds for the API Gateway integration"
  type        = number
  default     = 29000
}

variable "stage_name" {
  description = "The name of the stage in API Gateway"
  type        = string
  default     = "dev"
}
