Infraestrutura:
- aplicação (linguagem Go) executada em containers gerida pelo serviço ECS da AWS
- Load balancer realizando a distribuição de requisições na frente do ECS (dos containers com a aplicação)
- Banco de dados RDS com postgreSQL recebendo requisição somente do load balancer (aberta para os clientes na porta 8000), com acesso privado

Criação de pipeline de test/ build/ deploy no ECS e Docker hub utilizando a ferramenta GITHUB ACTIONS

Pipeline engloba o teste da aplicação/ Build (compilação)/ Deploy da imagem docker (dockerfile) no dockerhub, com serviço ECS realizando a orquestração desse container e colocando-o em execução

Pipelines se encontram na pasta /.github/workflows/
- go.yml (pipeline de test and build)
- docker.yml (pipeline para deploy no docker hub)
- ECS.yml (pipeline para deploy em container gerenciado pelo serviço ECS da AWS)

Lembrando que devido a termos variaveis de ambientes com informações sigilosas (senha do dockerhub/ IP, password, porta do RDS/ access e secret key loguin AWS), houve a necessidade do uso da ferramenta SECRETS do Github actions

obs: na seção de Actions podemos visualizar os steps referente a execução de cada pipeline
