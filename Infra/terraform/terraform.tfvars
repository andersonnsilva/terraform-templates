#Variaveis Globais
owner = "Anderson Nunes da Silva"

# Variáveis para os providers
aws_region          = "sa-east-1"
endpoint_localstack = "http://host.docker.internal:4566"

#Variáveis para o recurso DynamoDB

table_name           = "user_info"
table_read_capacity  = "20"
table_write_capacity = "20"
table_hask_key       = "ID"
table_attribute_name = "ID"
table_attribute_type = "N"

#Variáveis para o recurso SNS

sns_name = "mysns-topic"

#Variáveis para o recurso SQS

sqs_name = "mysqs-queue"

#Variáveis para o recurso SecretsManager

secret_name  = "my-secret"
secret_value = "my-secret-value"