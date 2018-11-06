FROM node:10

WORKDIR /app

COPY package.json yarn.lock /app/

RUN yarn

COPY . /app

CMD ["yarn", "start"]
