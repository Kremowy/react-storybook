FROM node:14

ADD . /react-skeleton
WORKDIR /react-skeleton
COPY ["package.json", "yarn.lock", "./"]
RUN yarn install

COPY . .

EXPOSE 3000

CMD ["yarn", "start"]