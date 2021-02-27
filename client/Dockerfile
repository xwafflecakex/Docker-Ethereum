# using node alpine as base image
# https://boredhacking.com/next-js-docker-ecr/
FROM node:10-alpine
#ENV PORT=3000
# working dir ./app
WORKDIR /app

# Copy react package.json
COPY ./package.json .

# install dependencies
RUN npm install -g npm@7.6.0

# COPY client directory folder
COPY . .

#EXPOSE 3000

# default command
CMD ["npm","start"]