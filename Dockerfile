FROM node:alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --silent

COPY . .

RUN npm run --silent build

EXPOSE 5000

CMD [ "npm", "run", "serve" ]
