output "api_id" {
  description = "The ID of the API Gateway"
  value       = aws_api_gateway_rest_api.api.id
}

output "api_invoke_url" {
  description = "The invoke URL of the API Gateway"
  value       = aws_api_gateway_deployment.api_deployment.invoke_url
}
