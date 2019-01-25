# 1o passo -> definir imagem base
FROM node:10-alpine

#2o passo -> copiar arquivos para dentro do container
ADD . /src

#3o definir onde os comandos serão executados
WORKDIR /src

#4o instalar dependencias globais do projeto
RUN npm i -g typescript

#5o restaurar as dependencias do projeto
RUN npm install

#6o compilar o projeto
RUN npm run build

#7o rodar o projeto (CMD -> pode ser substuito na execucao)
CMD npm start