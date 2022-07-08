# syntax=docker/dockerfile:1 

FROM node:16.15.1
ENV NODE_ENV=production

WORKDIR /app

EXPOSE 3000
COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

CMD [ "node", "app.js" ]
