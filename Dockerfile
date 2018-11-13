FROM node:10

WORKDIR /app

COPY package.json yarn.lock /app/

RUN yarn

COPY . /app
ENV HOST=0.0.0.0
ENV PORT=3000
CMD ["yarn", "start"]
EXPOSE 3000
