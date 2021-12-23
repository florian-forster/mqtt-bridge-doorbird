FROM node:16-alpine
WORKDIR /home/node
COPY index.js mqtt.js package.json ./
RUN chown node:node /home/node/*
USER node
RUN npm i
ENTRYPOINT ["npm", "start"]
