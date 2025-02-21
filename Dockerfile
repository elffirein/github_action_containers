FROM node:20

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.qkkys.mongodb.net
ENV MONGODB_USERNAME kaustuvchatterjee
ENV MONGODB_PASSWORD 1ubzHnu5Mauke9fD

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
