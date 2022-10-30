# terraform-templates

Projeto para construção de templates Terraform para estudo. Neste projeto, contém um docker-compose para utilização da localstack para validação dos templates terraform.

## Pré-Requisitos

- Docker
- aws cli

## Criando a Infra na LocalStack

1. Precisamos subir a nossa local stack, para isso na raiz do projeto, execute o comando abaixo:

```
docker-compose -f localstack/docker-compose-localstack.yml up
```
com isso, temos nossa localstack rodando localmente. Os passos a seguir, devem ser feitos dentro do diretório: *image_terraform*

2. Agora precisamos inicializar o nosso diretório de `infra/terraform`, ou seja, fazer o download da configuração do provider
para dentro da pasta.

terraform init
```
docker-compose run --rm terraform init 
```

3. Agora precisamos  verificar se a configuração da infra está correta, para isso, execute o comando abaixo:

terraform validate
```
docker-compose run --rm terraform validate
```
4. Agora, precisamos criar um plano, onde ele irá mostrar tudo o que foi planejado para ser deployado com infra.
Com o comando abaixo, ele irá gerar um plano dentro de um arquivo, e usaremos este arquivo para a criação da infra.

terraform plan
```
docker-compose run --rm terraform plan -out=infra.out
```

5. Criando a infra, ou seja, os recursos desejados na localstack, para isso execute o comando abaixo:

terraform apply
```
docker-compose run --rm terraform apply infra.out
```

6. Para verificar que criamos o(s) recurso(s), podemos executar o comando abaixo. Neste exemplo, estou verificando
se foi criada a tabela dynamodb que configuramos terraform.

```
aws --endpoint-url=http://localhost:4566 dynamodb list-tables
```

Se tudo ocorreu bem, deverá ser apresentado na tela a tabela criada.

## Criando toda a Infra

Já temos disponibilizada, templates prontos para criação dos seguintes recursos aws:

* dynamodb
* sns (Já com a subscrição criada juntamente com o Sqs)
* sqs
* S3
* Secrets Manager

Caso queira pular todos os steps anteriores e executar a criação dos recursos com um único comando, navegue até a raiz do projeto e execute o comando abaixo:

```
docker-compose up
```

Com isto, subirá a localstack, e em seguida, todos os recursos já configurados serão criados.