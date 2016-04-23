FROM node:4.3.2

RUN useradd --user-group --create-home --shell /bin/false app &&\
  npm install --global npm@3.8.7

ENV HOME=/home/app
RUN npm install nodemon -g
COPY package.json npm-shrinkwrap.json nodemon.json $HOME/chat/
RUN chown -R app:app $HOME/*

USER app
WORKDIR $HOME/chat
RUN npm install
RUN npm cache clean

USER root
COPY . $HOME/chat
RUN chown -R app:app $HOME/*
USER app

CMD ["node", "index.js"]
