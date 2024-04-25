# Casos

No primeiro topico foi pensando que poderia ser feito uma instancia a partir do terraform para que a mesma possa subir as aplicações.
Mas isso ainda implicaria um auto gerenciamento desnecessário. Pensando nisso, analisei que o dockerfile criado poderia subir a partir de um ECS da AWS.

# Passos a Passo:

# Criação de ECS
    - criar um securtiy group (acessar porta http:80 - All)
    - criação do cluster (cluster de EC2) - Linux - t2.micro
    - utilizar VPC
    - adicionar o security group
	
# Task Definition
# ECR
 - Criar o repositorio para subir a imagem local para o repositorio 
aws ecr get-login--password --region us-east-1 --profile desafio-devops | docker login --username -- AWS password-dtdin 9054118026903.dkr.ecr.us-east-1-amazon.com/test:latest
docker build -t test:latest 
docker tag tests:latest 9054118026903.dkr.ecr.us-east-1-amazon.com/test:latest
docker push 9054118026903.dkr.ecr.us-east-1-amazon.com/test:latest

# para criar o profile, ir em IAM para criar o user e dar as permissões no ECR e ECS.

# Criar Task Defition 
 - network mode: Bridge (padrão do docker)
 - criar um conteiner 
 - definir porta 80
 - 1 task rodando


# Conhecimento + Estudo 

O provisionamento foi pensado para fazer dentro do ambiente AWS. 
Por boas praticas podemos criar um documento para cada especificação do terraform, sendo elas instâncias/vpc/gateway/subnet etc.

O Projeto em si foi pensado para um provisionamento terraform onde não precisaria entrar na AWS para fazer a criação
e sim fazer diretamente no codigo hasicorp.

# Monitoramento 

Para o monitoramento, podemos utilizar o cloudWatch da AWS ou até mesmo o grafana para obter log e monitamento de instâncias e API.


# Adicionais 

branch's sendo trabalhadas: develop, master e branch's de desenvolvimento.




