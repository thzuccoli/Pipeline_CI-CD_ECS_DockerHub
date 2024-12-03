FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app

ENV HOST=localhost PORT=5432
# local do nosso banco de dados (localhost na porta 5432)
ENV USER=root PASSWORD=root DBNAME=root
# info que irão variar conforme acesso no banco de dados
COPY ./main main

CMD [ "./main" ]
