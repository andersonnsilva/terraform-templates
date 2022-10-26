resource "aws_secretsmanager_secret" "secretsmanager_test" {
  name = var.secret_name
}

resource "aws_secretsmanager_secret_version" "value_of_secret" {
  secret_id     = aws_secretsmanager_secret.secretsmanager_test.id
  secret_string = var.secret_value
}