FROM node:lts

WORKDIR /usr/src/app

COPY package.json /usr/src/app

RUN npm install --quiet

COPY index.js /usr/src/app/.
COPY .env /usr/src/app/.

EXPOSE 3000

CMD [ "npm", "start" ]

