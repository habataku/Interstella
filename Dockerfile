FROM node:19-bullseye
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "./"]

RUN npm install
EXPOSE 8080
COPY . .

CMD [ "node", "index.js" ]
# syntax=docker/dockerfile:1
