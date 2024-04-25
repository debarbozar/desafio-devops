# Provedor será AWS
terraform {
required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 4.16"
    }
}

required_version = ">= 1.2.0"
}

#Regiao AWS
provider "aws" {
    profile = "default"
    region  = "us-west-2"
}

# IAM UBUNTU
resource "aws_instance" "app_server" {
    ami           = " ami-04659629695e57e58"
    instance_type = "t2.micro"

tags = {
    Name = "desafio-devops"
}
}

## Usar o terraform init para baixar configurações e arquivos necessários (comuncação AWS)
## Usar o terraform plan (mostrará todas as informações da instancia)

