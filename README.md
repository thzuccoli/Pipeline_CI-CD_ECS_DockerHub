Criação de pipeline de test/ build/ deploy no EC2 e Docker hub utilizando a ferramenta GITHUB ACTIONS

Projeto utilizando uma aplicação em go (api) com conexão no banco de dados da AWS (RDS-PostgreSQL)

Pipeline engloba o teste da aplicação/ Build (compilação)/ Deploy em uma instancia na EC2 e no repositorio Dockerhub

Pipelines se encontram na pasta /.github/workflows/
- go.yml (pipeline de test and build)
- docker.yml (pipeline para deploy no docker hub)
- cd_ec2.yml (pipeline para deploy em instancia EC2)

Lembrando que devido a termos variaveis de ambientes com informações sigilosas (password), houve a necessidade do uso da ferramenta SECRETS do Github actions

obs: na seção de Actions podemos visualizar os steps referente a execução de cada pipeline
