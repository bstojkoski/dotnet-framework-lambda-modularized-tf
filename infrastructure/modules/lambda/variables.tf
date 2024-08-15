variable "function_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "s3_bucket" {
  description = "The S3 bucket containing the Lambda deployment package"
  type        = string
}

variable "s3_key" {
  description = "The S3 key of the Lambda deployment package"
  type        = string
}

variable "handler" {
  description = "The function handler for the Lambda function"
  type        = string
}

variable "runtime" {
  description = "The runtime environment for the Lambda function"
  type        = string
}

variable "lambda_role_arn" {
  description = "The ARN of the IAM role used by the Lambda function"
  type        = string
}

variable "memory_size" {
  description = "The amount of memory allocated to the Lambda function"
  type        = number
  default     = 512
}

variable "timeout" {
  description = "The execution timeout for the Lambda function"
  type        = number
  default     = 15
}

variable "source_arn" {
  description = "The ARN of the API Gateway resource that will invoke the Lambda function"
  type        = string
}
