variable "aws_region" {
  default     = "eu-west-1"
  description = "Set AWS region"
}

variable "lambda_role_arn" {
  description = "The Lambda role that will be used."
  type        = string
  default     = "arn:aws:iam::024848463067:role/lambda_exec_role"
}
