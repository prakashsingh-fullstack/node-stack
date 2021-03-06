FROM node:14.16.0-alpine3.12

WORKDIR /usr/src/app

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . .

RUN npm run-script build

expose 8888

CMD ["npm", "run-script start"]


