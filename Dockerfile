# syntax=docker/dockerfile:1

FROM node:alpine3.11
RUN apk add --no-cache python g++ make
WORKDIR /app
COPY app/package.json app/yarn.lock ./
RUN yarn
COPY app/src ./src
CMD ["node", "src/index.js"]