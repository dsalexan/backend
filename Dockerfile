FROM node:latest

ARG PORT=9000

WORKDIR /usr/src/app

COPY . .

RUN yarn install
RUN yarn build

EXPOSE $PORT
CMD yarn start