FROM node:20

WORKDIR ./

COPY package*.json ./

# RUN npm install
RUN npm ci

COPY ./index.js ./index.js

EXPOSE 3000

CMD node index.js