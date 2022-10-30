
# Variáveis para providers

variable "aws_region" {
  type        = string
  description = "Região AWS"
}

variable "owner" {
  type        = string
  description = "Owner do projeto"
}

variable "endpoint_localstack" {
  type        = string
  description = "Variavel responsável por guardar o endpoint da LocalStack"
  default     = "http://localhost:4566"
}

#Variáveis para o recurso DynamoDb

variable "table_name" {
  type        = string
  description = "Nome da tabela Dynamo"
}

variable "table_read_capacity" {
  type        = string
  description = "Capacidade de leitura da tabela"
}

variable "table_write_capacity" {
  type        = string
  description = "Capacidade de escrita na tabela"
}

variable "table_hask_key" {
  type        = string
  description = "Key da tabela"
}

variable "table_attribute_name" {
  type        = string
  description = "Atributo a ser criado na tabela"
}

variable "table_attribute_type" {
  type        = string
  description = "Tipo do atributo a ser criado"
}

#Variáveis para o recurso SNS

variable "sns_name" {
  type        = string
  description = "Nome do Tópico SNS"
}

#Variáveis para o recurso SQS

variable "sqs_name" {
  type        = string
  description = "Nome do Sqs"
}

#Variáveis para o recurso SecretsManager

variable "secret_name" {
  type        = string
  description = "Nome da Secret"
}

variable "secret_value" {
  type        = string
  description = "Valor da secret"
}

#Variaveis para o recurso S3

variable "bucket_name" {
  type        = string
  description = "Variavel que armazena o nome do Bucket"
}