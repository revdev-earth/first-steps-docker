# syntax=docker/dockerfile:1
FROM node:alpine3.11
RUN apk add --no-cache python g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]