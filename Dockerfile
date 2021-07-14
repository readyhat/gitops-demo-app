FROM node:12.18.2
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY ./src .
EXPOSE 1337/tcp
CMD [ "npm", "start" ]