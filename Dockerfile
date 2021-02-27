# using node alpine as base image
FROM node:alpine

# working dir ./app
WORKDIR /app
# Install the prerequisites to install the web3 and other ethereum npm packages
RUN apk update && apk upgrade && apk add --no-cache bash git openssh
RUN apk add --update python krb5 krb5-libs gcc make g++ krb5-dev

# Copy react package.json
COPY ./package.json .

# install dependencies
RUN npm install -g npm@7.6.0

# COPY client directory folder
COPY . .

# default command
CMD ["npm","start"]

# Docker build command: docker build -t ganache .