output "lambda_function_name" {
  value = aws_lambda_function.app.function_name
}

output "secret_arn" {
  value = aws_secretsmanager_secret.db_creds.arn
}

output "test_command" {
  value = "aws lambda invoke --function-name ${aws_lambda_function.app.function_name} response.json && cat response.json"
}