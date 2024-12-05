FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app

ENV HOST=localhost DBPORT=5432
# local do nosso banco de dados (localhost na porta 5432)
ENV USER=root PASSWORD=root DBNAME=root
# info que irão variar conforme acesso no banco de dados
COPY ./main main

RUN chmod +x main
# comando para dar as permissões necessarias à aplicação main
COPY ./templates templates/
# comando para copiar os arquivos estaticos da aplicação (pasta templates para a pasta templates do container)
CMD [ "./main" ]
