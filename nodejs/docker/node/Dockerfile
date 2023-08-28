FROM node:lts-alpine

ADD ./docker/node/fucking_entrypoint.sh ./
COPY ./docker/node/package*.json ./

RUN chmod +x fucking_entrypoint.sh
RUN npm install --progress=false --loglevel=notice

ENV NODE_PATH /node_modules
ENV PATH $PATH:/node_modules/.bin

WORKDIR /app

CMD ["sh", "-c", "../fucking_entrypoint.sh"]
# CMD ["node", "index.js"]
