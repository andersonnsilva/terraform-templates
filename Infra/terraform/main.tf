module "dynamodb" {
  source               = "./modules/dynamo"
  table_name           = var.table_name
  table_read_capacity  = var.table_read_capacity
  table_write_capacity = var.table_write_capacity
  table_hask_key       = var.table_hask_key
  table_attribute_name = var.table_attribute_name
  table_attribute_type = var.table_attribute_type
}

module "sns" {
  source   = "./modules/sns"
  sns_name = var.sns_name
  sqs_arn  = module.sqs.sqs_arn
}

module "sqs" {
  source   = "./modules/sqs"
  sqs_name = var.sqs_name
}

# module "secretsmanager" {
#   source       = "./modules/secretsmanager"
#   secret_name  = var.secret_name
#   secret_value = var.secret_value
# }