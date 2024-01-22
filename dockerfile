FROM node:lts-alpine

RUN npm install -g http-server

WORKDIR /vue

COPY . .

RUN npm install

RUN npm run build

#ENV

EXPOSE 8080 80

CMD [ "http-server", "dist" ]