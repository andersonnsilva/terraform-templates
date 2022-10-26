resource "aws_dynamodb_table" "teste" {
  name           = var.table_name
  read_capacity  = var.table_read_capacity
  write_capacity = var.table_write_capacity
  hash_key       = var.table_hask_key

  attribute {
    name = var.table_attribute_name
    type = var.table_attribute_type
  }
}