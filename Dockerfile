FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.nqpbiip.mongodb.net
ENV MONGODB_USERNAME sivathanu
ENV MONGODB_PASSWORD Z0ZFeLQH8HC2bvT9

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]