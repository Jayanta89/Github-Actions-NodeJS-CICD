FROM node:10.16.0-alpine

WORKDIR /source/github-action-example-node

COPY package.json /source/Github-Actions-NodeJS-CICD

RUN cd /source/Github-Actions-NodeJS-CICD && npm i --only=production

COPY . .

EXPOSE 3000
CMD ["sh", "-c", "node server.js"]