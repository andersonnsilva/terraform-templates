variable "table_name" {
  type = string
  description = "Nome da tabela Dynamo"
}

variable "table_read_capacity" {
  type = string
  description = "Capacidade de leitura da tabela"
}

variable "table_write_capacity" {
  type = string
  description = "Capacidade de escrita na tabela"
}

variable "table_hask_key" {
  type = string
  description = "Key da tabela"
}

variable "table_attribute_name" {
  type = string
  description = "Atributo a ser criado na tabela"
}

variable "table_attribute_type" {
  type = string
  description = "Tipo do atributo a ser criado"
}