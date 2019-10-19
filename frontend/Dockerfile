FROM node:lts-alpine


ENV NODE_PATH=/node_modules
ENV PATH=$PATH:/node_modules/.bin

WORKDIR /code

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json


RUN npm install

# Copy source code
COPY ./public ./public
COPY ./src ./src
